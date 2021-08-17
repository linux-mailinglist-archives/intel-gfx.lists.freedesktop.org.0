Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D813EF396
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 22:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9576E245;
	Tue, 17 Aug 2021 20:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF697897E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 20:43:37 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id x12so30470483wrr.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 13:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=suykTtn8L9b2vCrN/hQSQGbGRTW4fM25XHTOuiQ2dSM=;
 b=TUvThoXq0AY9rnYfWxlEzlHg4g3+HwhM6JvaSmgkIG/JGRsFx7Xk1RnMUSkmj4kfIw
 yaxiTlDrP9eElc58wh4Pwc02hFcMfh5BNZJbZ+pEMDOqeijPEcIQ+b9U2rO2VJ/JyX0L
 0rgVluTPGXZUSsr+NWqEmgF0uxG744EVpcGZ30+H/o9NABHYnjvCF2/3dki7ZmqWX6nN
 69m0EEr3hCfI78eUzbieajumc94eudkMs28tz/+akf6A3NxBDIRr98/U4fw2f7sYcOIi
 HG1ZjNAjcqo+TyDCWYzbieclEuTF1pAk+YmcN6HR0z2HHHwGz+TCldp1HNokQ0b5wSOH
 GQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=suykTtn8L9b2vCrN/hQSQGbGRTW4fM25XHTOuiQ2dSM=;
 b=i++ma2SKApTmKr+6n1mNs+J3i4H4mVcfXrLOTGhGJunyuonJQ0oOqMIPduvVGOIBvK
 th4hT8rZm/kbgzzLMNekayXEeZCZgUjaBftA4MMcmQ4fCZ9bORsBD2N8UcmMd4iOemNs
 EEbExCRgUM7Abz72Em7mSH4h3YBx0PvxTimeoC83sgGrLGmocWi+ctnneYyTDtX6DUbC
 1nKzL78ZOOuu06uSuo07wt2gyYfcyFn4xG2uciUA2R1HQftm1Ch4oZHRCdx3YmmNffhg
 tu3A93FH/5jGU2EZyMpjTB5ERN5RU+iOMad/g/NjHdBhnbRAEz/kj3H0Y2b9etBrkjqj
 65kw==
X-Gm-Message-State: AOAM531DRLxySRvqP18vMInCE9Op4GcCu7cLQEVVX0fje0N7fZKYF8pC
 ZOcaN+zGfwmDHAbGxhZ7Ni33oAHVpu7j9A==
X-Google-Smtp-Source: ABdhPJw3FhV5TBRJx1W3VTN9iKNWemS1DBfaiSU+Cm+VIxF3fsEs9hZhSvs7PnDhyiEAmfUd+TcrRQ==
X-Received: by 2002:a5d:4b01:: with SMTP id v1mr6247314wrq.377.1629233016107; 
 Tue, 17 Aug 2021 13:43:36 -0700 (PDT)
Received: from gpdmax.. ([2a0d:e487:15f:f479:6202:d4f7:9ddb:b07c])
 by smtp.gmail.com with ESMTPSA id e10sm3540332wrt.82.2021.08.17.13.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 13:43:35 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Dadap <ddadap@nvidia.com>,
 Anisse Astier <anisse@astier.eu>
Date: Tue, 17 Aug 2021 22:43:27 +0200
Message-Id: <20210817204329.5457-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] GPD Win Max display fixes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series is for making the GPD Win Max display usable with
Linux.

The GPD Win Max is a small laptop, and its eDP panel does not send an
EDID over DPCD; the EDID is instead available in the intel opregion, in
mailbox #5 [1]

The first patch is based on Jani's patch series [2] adding support for
the opregion, with changes. I've changed authorship, but I'd be glad to
revert it

The second patch is just to fix the orientation of the panel.

Changes since v1:
 - rebased on drm-tip
 - squashed patch 1 & 2
 - picked up Reviewed-by from Hans de Goede (thanks for the review)

Changes since v2:
 - rebased on drm-tip
 - updated commit message

When v2 was initially sent [3] Ville Syrjälä suggested that it might be
a good idea to use the ACPI _DDC method instead to get the EDID, to
cover a wider range of hardware. Unfortunately, it doesn't seem
available on GPD Win Max, so I think this work should be done
independently, and this patch series considered separately.

[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
[2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/
[3]: https://patchwork.kernel.org/project/intel-gfx/patch/20210531204642.4907-2-anisse@astier.eu/


Anisse Astier (2):
  drm/i915/opregion: add support for mailbox #5 EDID
  drm: Add orientation quirk for GPD Win Max

 .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
 drivers/gpu/drm/i915/display/intel_opregion.c | 69 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h |  8 +++
 4 files changed, 85 insertions(+), 1 deletion(-)

-- 
2.31.1

