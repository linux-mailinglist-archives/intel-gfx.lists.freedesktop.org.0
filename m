Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4BE7B7DE0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 13:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DE310E103;
	Wed,  4 Oct 2023 11:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7A410E103
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 11:09:38 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-323ef9a8b59so1956240f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Oct 2023 04:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696417776; x=1697022576; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FA+Q3ozL26nhVN1ktuRRhHOkaSUQZ7LcA4Qd9W5gZ1w=;
 b=SxcoS5bU+Ax8wLj9vnyYw7LacHokuRQh7DaWCbKsRLQQRIzxe2+5xCj6T0ZhvloeRS
 N3B26kxmbblIeJ6C+9gcRhttt8hceu4oc4ZifVZn4mHeVVL2B6cZpXR6uu4HiHidce0N
 vVRWMkFmgn/bOkp7BgvUbWxk5akSoa7BSqCdMKKhM0F+Kl5HZBTwK6HOaHRmkllVwWkf
 S+1IKiClISdUfsDS0vhyJR/wf1Fna2Vf8WYrhTi0sUR8BupaYhj7whSlgrmpr13iOgVj
 Peh5pGeDZlyCOkuO0VbWHlSsfQbcmBnEQFmsiV/OaEl6jCQX2UNdSsn6g9hi8VT+HH0b
 I0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696417776; x=1697022576;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FA+Q3ozL26nhVN1ktuRRhHOkaSUQZ7LcA4Qd9W5gZ1w=;
 b=IDA3YZo79EFVLkz5V8gw4pjFNpQOA1+YGDbZMUFYCN93od5VHGmC0zlj5r/nKCiAiI
 pMLUj8vfOipicI4VLxBptq0UC9KfBokfCoLC4EzjFVckJ1IEQ+zLrFEPQMc0cliqefUz
 FZH/QVF2I8zRHLZoNKIjszByTYvBnROV2iA9fSodzSIohfKLD+RaB8yvMcr5WUDz3h14
 OmoBbaXkjStjj5XouJxywLsFy0fZfierS2sBrWoESQxrwYMMb/1QnZ/TelGvtt55MbQm
 eAXj5gKz6F74ohELFJ84UYJo8r9B0305EvYHXmyH60ZRsm4ACJZF1SURFAisK8DQ75Rh
 kAAQ==
X-Gm-Message-State: AOJu0Yzs5S1uNppMq2O5J34ub+3oQB8Z49lbauYXV+SX0hQHxdGUR6Ak
 NzjGQ5JzJ8TmT6iHrFmvSo1LkA==
X-Google-Smtp-Source: AGHT+IFuiRqt5VXkktfMCB/t9RoVPvV2n88h1dq4hIe43OnZfrBv1/VChxFauqDoT1Riows7161a4g==
X-Received: by 2002:adf:e6c4:0:b0:319:841c:ae7a with SMTP id
 y4-20020adfe6c4000000b00319841cae7amr2090570wrm.41.1696417776405; 
 Wed, 04 Oct 2023 04:09:36 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 l7-20020a05600012c700b0031c52e81490sm3744715wrx.72.2023.10.04.04.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Oct 2023 04:09:35 -0700 (PDT)
Date: Wed, 4 Oct 2023 14:09:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: ville.syrjala@linux.intel.com
Message-ID: <4c065dc5-ac81-4ef3-a934-a595afe85d5c@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [bug report] drm/i915/dsb: Use DEwake to combat PkgC
 latency
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

The patch f83b94d23770: "drm/i915/dsb: Use DEwake to combat PkgC
latency" from Jun 6, 2023 (linux-next), leads to the following Smatch
static checker warning:

	drivers/gpu/drm/i915/display/intel_dsb.c:363 _intel_dsb_commit()
	warn: always true condition '(dewake_scanline >= 0) => (0-u32max >= 0)'

drivers/gpu/drm/i915/display/intel_dsb.c
    339 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
    340                               unsigned int dewake_scanline)
                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
unsigned int

    341 {
    342         struct intel_crtc *crtc = dsb->crtc;
    343         struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
    344         enum pipe pipe = crtc->pipe;
    345         u32 tail;
    346 
    347         tail = dsb->free_pos * 4;
    348         if (drm_WARN_ON(&dev_priv->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
    349                 return;
    350 
    351         if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
    352                 drm_err(&dev_priv->drm, "[CRTC:%d:%s] DSB %d is busy\n",
    353                         crtc->base.base.id, crtc->base.name, dsb->id);
    354                 return;
    355         }
    356 
    357         intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
    358                           ctrl | DSB_ENABLE);
    359 
    360         intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
    361                           i915_ggtt_offset(dsb->vma));
    362 
--> 363         if (dewake_scanline >= 0) {
                    ^^^^^^^^^^^^^^^^^^^^
always true

    364                 int diff, hw_dewake_scanline;
    365 
    366                 hw_dewake_scanline = intel_crtc_scanline_to_hw(crtc, dewake_scanline);
    367 
    368                 intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
    369                                   DSB_ENABLE_DEWAKE |
    370                                   DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
    371 
    372                 /*
    373                  * Force DEwake immediately if we're already past
    374                  * or close to racing past the target scanline.
    375                  */
    376                 diff = dewake_scanline - intel_get_crtc_scanline(crtc);
    377                 intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
    378                                   (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
    379                                   DSB_BLOCK_DEWAKE_EXTENSION);
    380         }
    381 
    382         intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
    383                           i915_ggtt_offset(dsb->vma) + tail);
    384 }

regards,
dan carpenter
