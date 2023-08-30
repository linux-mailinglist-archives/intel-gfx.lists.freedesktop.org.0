Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C71478D4BA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 11:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB2410E124;
	Wed, 30 Aug 2023 09:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7700A10E4DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 09:43:03 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-401ce65dfc4so7613505e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 02:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1693388582; x=1693993382; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=viHZkgSW0z1TbhhriSlmivc4PJ+sy0cGul8lmxZzVUY=;
 b=g+KgPLG8bbtegTtgRrLa9pOtKKEc9diQ7fJJWY+JwcWva8oionMa3DgpEWPy8n0+SI
 AeU9AT2P+g4fXqIF78t8TUQypWGdHKNuuSZrJezS5MFb953WVkP3i32vrzmFMNANB5to
 Xxk8PugYg5lvThGLw9LUWZwbGih3+zsDmQaBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693388582; x=1693993382;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=viHZkgSW0z1TbhhriSlmivc4PJ+sy0cGul8lmxZzVUY=;
 b=JzDsU3V4h4Ft77FsUtgW5mF99CMRLVCXaDM2LX0ITojrDuVm6tPFn97gg5BtSXzCuR
 rDKCe6gP2wbo/+0szC95+7RJavRt3McX4d0YrIsAwe4/q+rswlpB9m/t7PSs0lXLAh5l
 6nZkrihM6qH1PtxdZAnOFaqC4BTDqsNE5Lqpv3FHLxVMiX+36lvenxyRzvd8l0zhqGfQ
 KW5SJWZ2OivkzNVZsmJX00e+ZOi0ENSAmBLvPrD/h4pgPgRZUiYL3MBHgTEX7FStTF5Z
 ykr+R9lMlFO/k5wWzbN2LReSyL+TFhMIcJDti3LeJivRpJRVWADWN9Ef2clskHQmLgUu
 fLKA==
X-Gm-Message-State: AOJu0YxLIzxg2mALpeBKBCkt7CUSpQgdp5X0DtlE7kj5haYG8/IMjard
 31egjmb10TipY4t8bfLlOwezQw==
X-Google-Smtp-Source: AGHT+IGUucwXdtUXAYEetJnCsYJnlfqFZQvjwqtcvIW1PmgoCi2qMZX7yrpGdZp9lI5heUgjRDnHrg==
X-Received: by 2002:a5d:4101:0:b0:31a:e54e:c790 with SMTP id
 l1-20020a5d4101000000b0031ae54ec790mr1238582wrp.6.1693388581246; 
 Wed, 30 Aug 2023 02:43:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 p14-20020a5d638e000000b003176eab8868sm16075188wru.82.2023.08.30.02.42.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Aug 2023 02:43:00 -0700 (PDT)
Date: Wed, 30 Aug 2023 11:42:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZO8PIQ5PluPGuz7t@phenom.ffwll.local>
References: <cover.1692705543.git.jani.nikula@intel.com>
 <788721f6-afff-e0b2-db7c-32ab2dd075a9@amd.com>
 <87il965gob.fsf@intel.com> <871qfm2kg1.fsf@intel.com>
 <CADnq5_P49U3dcqiZhB-CjS8UbOtB7K2jNObS0ZQqMhOr3UhLQg@mail.gmail.com>
 <87o7ip252r.fsf@intel.com> <87jztd2332.fsf@intel.com>
 <1e6aa1ff-9aa9-6b2f-84f4-e0304205085c@amd.com>
 <87h6oh0yz9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h6oh0yz9.fsf@intel.com>
X-Operating-System: Linux phenom 6.4.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/amd/display: stop using
 drm_edid_override_connector_update()
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
Cc: Alex Hung <alex.hung@amd.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, amd-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, Daniel Wheeler <daniel.wheeler@amd.com>,
 Hersen Wu <hersenxs.wu@amd.com>, dri-devel@lists.freedesktop.org,
 Wenchieh Chien <wenchieh.chien@amd.com>, Alex Deucher <alexdeucher@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, "Wang,
 Yu \(Charlie\)" <Yu.Wang4@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 30, 2023 at 10:29:46AM +0300, Jani Nikula wrote:
> Upstream code should be reviewed in public.
 
Yup
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
