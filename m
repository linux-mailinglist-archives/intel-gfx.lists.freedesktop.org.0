Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E4B843108
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58F81136FA;
	Tue, 30 Jan 2024 23:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9BF1136FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:18:18 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id
 ada2fe7eead31-46b2e88a808so1079621137.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656637; x=1707261437;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=tNQCJn52iciykD56fopR78Jtzgfu3EuGSUWZjBnGvEA=;
 b=ALVO/dSva2uHYTdwN/iDyZb9e28vxs9jL02Xh2Yl7L6kOqpbml77jh6ItZrsSES3YZ
 KOqG+BENoVxiHCYIHNPanCNU6cr/+Z1/FOmxR8jWgeaYnhqto4+yVUr49lk6Alnhcbnk
 Bz8MghZU9xyIdEkyawo2wsKIS2IHtI+zY5huU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656637; x=1707261437;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tNQCJn52iciykD56fopR78Jtzgfu3EuGSUWZjBnGvEA=;
 b=qCxQUe9L2udzjxsEFfsHNmv8IqNzYVLLXjbWWYUOZDzHPJif4fX/2RxQNOXwWIiwQE
 EMKcSbKEcuhDGMJk5jGlVDZA70fTl9i+CE7Qpn99WU6Ap35nV55VJdgtuweT9XPyrwm6
 C4pxJ7ABz1BYhGugFXmnA7DZy8nVPPjbCHqmtCi2+EaIOzx05Hj8nzLP+iuaEzR8hKfh
 7UamRrYoFOGdzY9W3G9ms3Uad5N5jKyQVPWFEzc6jiPUm/DjNiZT9lDDorfKcjBCJiNq
 bLQEv7fllzsAxiJeY8xQdZI7PDArXvKQmWCJqanwPHZT3UijHq15pWOpcCQwsZhvwWO0
 OqMg==
X-Gm-Message-State: AOJu0YxfbTGrb0o545jvk7ljUwza8kZH3q0ZxWk5gY2uzXefctenWIMg
 R7PLk0YXQb7ivVDvtTTx/4x8lBiwQ/6kWcFZe3d+hJV4xTzOabBT2fVbDS8Taw==
X-Google-Smtp-Source: AGHT+IFpjFCBGYPxy7q+nsHS6JqAm41IfN8wDCsKc/zeXHCpRnzUYFJ9M+890gMvlF8Isq/g3UhErA==
X-Received: by 2002:a05:6102:3b87:b0:46b:3d9c:99cd with SMTP id
 z7-20020a0561023b8700b0046b3d9c99cdmr4766391vsu.15.1706656637656; 
 Tue, 30 Jan 2024 15:17:17 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 p4-20020a05620a112400b00783f9f6d5b7sm2445499qkk.10.2024.01.30.15.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:17:17 -0800 (PST)
Date: Tue, 30 Jan 2024 23:17:16 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v3 03/16] drm/i915: Remove ad-hoc lmem/stolen debugs
Message-ID: <ZbmDfA_fnXWtpjMs@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-4-ville.syrjala@linux.intel.com>
 <ef3ecc84-9128-4c1c-99aa-3a335cf8acaa@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef3ecc84-9128-4c1c-99aa-3a335cf8acaa@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 11:23:37AM +0100, Nirmoy Das wrote:
> 
> On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Now that intel_memory_regions_hw_probe() prints out each and every
> > memory region there's no reason to have ad-hoc debugs to do similar
> > things elsewhere.
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>


