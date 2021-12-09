Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7058446F656
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 23:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC9810E38B;
	Thu,  9 Dec 2021 22:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D71210E384
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 22:00:58 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id c4so12032467wrd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Dec 2021 14:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nrAV5YvyAi4BWNSVBDlvp4X8duBIlEpTg5hQkVgtrrc=;
 b=UCofwBRk5kDal5GCbjX9iBjwOSnKnOEc9QpGoOmhStEzjkfbZGknqSBfGcpCThcfAi
 q8KoHwxGXURrKM2RPJDtesaCJlPyKZnPPD38b+8p8nFa+WcPQig47KDk4Gjit9lr14SH
 fkcsKgwKi/zaTrN3GJ8fsk6bMbK6o6fiyf02JzAH24ynhKKfrhYis3Bh2nzWi8lFdsLO
 uGr4zdqFrSQcyyUaf07ebqn5exZawrsm1LW13HgYpGOQYyEb8TjBVEQcmXbms5ZXg4bN
 ntL83SV+cuyC2TzV5IACPsrA05Jrl3SGl0nHhCauXNSAL4i4cL7pPmCruQt2g15u76Yr
 GYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nrAV5YvyAi4BWNSVBDlvp4X8duBIlEpTg5hQkVgtrrc=;
 b=1YrQea/ZzUg13vycoUq7jgXJD5nB/tvTtMUxr/w3yJfoGUqIZH167VU5ledoC3wUAJ
 urIz5sVFO8E1xvSdFft+DYIWtb0MI1gTAjLn2Ods3ZwexsG5xnUEcVPcDS+1GUVSxMlM
 gERDuT81J5+AeUDhvvXKA9lt8EgVjDGXsJfbaYSZasaEcCbW/OKpf0TMkQ2S0PLEg+8S
 Ua3lsdmFhM5hRuVpqa3+/KZKCk9FQnEBLQ80eU3cmu8LdC7sY/rHyAyRWeoiunNcaDh4
 hZK1qPZ5iCBhWKVddzX8cwBFxO4avNA+rSPA6jxi1tE3n9nFiY3OvBAurkwcr6HEipk6
 yJfw==
X-Gm-Message-State: AOAM530td6LpatVu0fK5HKh4l/srHr/Q+FC1FJaOY6N/jSuwMPo6SHPE
 ZptB/h1wj57UYY4u0wUAkCCtRDsYD1NBWg==
X-Google-Smtp-Source: ABdhPJw/aEOJ05rlG5s0JJm8C8w+saTm1HBwcZH5wZio4X++fjxL9LwiSpgAXhDM7AeH4XD95KZZ/w==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr9305920wro.609.1639087256115; 
 Thu, 09 Dec 2021 14:00:56 -0800 (PST)
Received: from gpdmax.. ([2a01:e0a:28f:75b0:cf6:c90f:f3b1:89c1])
 by smtp.gmail.com with ESMTPSA id f7sm1061524wri.74.2021.12.09.14.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Dec 2021 14:00:55 -0800 (PST)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 Dec 2021 23:00:40 +0100
Message-Id: <20211209220042.310848-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 RESEND 0/2] GPD Win Max display fixes
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
Cc: Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series is for making the GPD Win Max display usable with
Linux.

The GPD Win Max is a small laptop, and its eDP panel does not send an
EDID over DPCD; the EDID is instead available in the intel opregion, in
mailbox #5 [1]

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

Change since v3:
 - edits following Jani's review:
    - The EDID from the opregion is now only used as a fallback: if we
      cannot get any edid from the edp connector, then we attempt to get
      it from the opregion. This works for the GPD Win Max.
    - all other remarks should have been taken into account
 - rebased on drm-tip
 - added Co-developed-by
 - reordered signed-off-by and reviewed-by in second patch (thanks
   Maarten!)


[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
[2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/
[3]: https://patchwork.kernel.org/project/intel-gfx/patch/20210531204642.4907-2-anisse@astier.eu/


Anisse Astier (2):
  drm/i915/opregion: add support for mailbox #5 EDID
  drm: Add orientation quirk for GPD Win Max

 .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++
 drivers/gpu/drm/i915/display/intel_opregion.c | 55 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 10 ++++
 4 files changed, 77 insertions(+), 1 deletion(-)

-- 
2.31.1

