Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8267AEE53
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 16:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7765E10E3EC;
	Tue, 26 Sep 2023 14:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2050210E3EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 14:08:35 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-323344eae8eso1704246f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 07:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1695737313; x=1696342113; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Lat/oUuJndraZa0ghPts1t0BgjcV2shw75IhVfRAEc4=;
 b=A91fh2+6/DcI6ZajodzVWqzFMT824kouvY3Kk7fwcbKmJW/x5kgcbCI2JgEhJusNBY
 KqV+fSt9OyCAe9GoG+oGStCV2e94FIV9pUJPmwbdJ1GHN/rkjzDJLmiiceh5V3bySnJg
 XtsBMmsk59m2DGENh6iW/FmoIcWXI/5zQ+4JmrAmhzmOICQh9fIPKMHT0XpdvFNJN0kG
 LPtWLWWYxBUzPVeejh5uUDE68knS7ciup9xE0lBkoscue4HNHAvTOhJgkI6Xyr/h3yTK
 t4gQHIRSHURL4UEkgWbJGJ5vTiF0KaVjFQ5n+hxQR70giYQ46BwOcUR1dJvzgOm1L+gs
 Z1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695737313; x=1696342113;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Lat/oUuJndraZa0ghPts1t0BgjcV2shw75IhVfRAEc4=;
 b=rMzaNUJJ7/zefGUp4hUXwIqWnxlHDZHSbaYy8W03EoxgpPxVY4FKXmLg6hlJiOycU5
 80bkfCEtGWenUHD/kIa4VfH+yLBDMY84JymbCpxMmj1M6aFTxMoQlnKVv98euEFbXusA
 FR/KFF33DzWrwGDxH9muPKDL+q1BzWkOtpsazWAqIDTicc4/sjOIPQRTyCLGbsNROijf
 VBVPPZA4UkzvYLAO/rZhYoNpdMV/RcB+jTCKwzdq4Chs2MQLcTbItPGRt5lZqjJ/cMUj
 1+1B7zVuAGffYkYMJjaQUQAuu5fqjXzI+Vc0mT1m/8OFbO1oSVNj6lMD9ADp9weLuojZ
 DL7A==
X-Gm-Message-State: AOJu0Yx4EaUojcV4YbhKWl7RsJyZoVVU8tuRwHPJWdZx5YagNWZ0KeBc
 BpvAA1IQpF+VQiRFBbaghBwhpw==
X-Google-Smtp-Source: AGHT+IHoVqloWw36zoVJuLeQL1GwR2D02pwfmrMx14yhkDg+4aBdxJZ4xXKVrdhH497xgNuTINUAtg==
X-Received: by 2002:a5d:58cc:0:b0:321:685f:e0a7 with SMTP id
 o12-20020a5d58cc000000b00321685fe0a7mr8835730wrf.3.1695737313441; 
 Tue, 26 Sep 2023 07:08:33 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 t10-20020adff60a000000b0031c5e9c2ed7sm14751492wrp.92.2023.09.26.07.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Sep 2023 07:08:33 -0700 (PDT)
Date: Tue, 26 Sep 2023 17:08:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: ville.syrjala@linux.intel.com
Message-ID: <7b928525-d24e-4817-99f2-5269017bba42@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [bug report] drm/i915/hdmi: Use connector->ddc everwhere
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Ville Syrjälä,

This is a semi-automatic email about new static checker warnings.

The patch e046d1562491: "drm/i915/hdmi: Use connector->ddc everwhere"
from Aug 29, 2023, leads to the following Smatch complaint:

    drivers/gpu/drm/i915/display/intel_ddi.c:4336 intel_hdmi_reset_link()
    warn: variable dereferenced before check 'connector' (see line 4329)

drivers/gpu/drm/i915/display/intel_ddi.c
  4328		struct intel_connector *connector = hdmi->attached_connector;
  4329		struct i2c_adapter *ddc = connector->base.ddc;
                                          ^^^^^^^^^^^^^^^^^^^
The patch introduces a new dereference

  4330		struct drm_connector_state *conn_state;
  4331		struct intel_crtc_state *crtc_state;
  4332		struct intel_crtc *crtc;
  4333		u8 config;
  4334		int ret;
  4335	
  4336		if (!connector || connector->base.status != connector_status_connected)
                     ^^^^^^^^^
Checked too late.

  4337			return 0;
  4338	

regards,
dan carpenter
