Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4917BE869
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2BD10E296;
	Mon,  9 Oct 2023 17:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3D210E2A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:51 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id
 38308e7fff4ca-2c1854bebf5so59928531fa.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Oct 2023 10:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696873249; x=1697478049; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AVumlMvgURvTABPGEb+yEOR7ydtBlb2XaUShMA2Jpso=;
 b=dNt9No8+eVWL8C3UUprfUxCYVEI5r3ahAxigEC4VyZnEk3zqX44/ZBkFKi6oyF+TlQ
 +QVlKYnu9S84CxHRqUDtIkHVSoO9MjnfVLcQCyOEMkGIIEaRaWWSVnu0d9cepjX+p44r
 xh4nBNqyYYCx9nAgMZmLcQkGH5heOF9TIF3aBh7cBxaPuFHutqXtsR0TAk1CD1aMBPFJ
 HE1rgcERLIVYqziYdunA9Gmihq5LyxqEeaQ9M/XEEN5s634ZrSw2+JbgxIu0CYTp3RFQ
 U4gmF/e7HurtnFS49cR6vKsDsSEFZMWLtP4ZfN44U0pv4w79QImXS8LB9u3EFsinEcQU
 aKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696873249; x=1697478049;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AVumlMvgURvTABPGEb+yEOR7ydtBlb2XaUShMA2Jpso=;
 b=TJwQcdrvTXWvwDT2qBHyxBcaVA+WpUeSl5jI2fYWEOpxMEHGKbBQv13NmYxouy31Ee
 EXyZdWcP45fwNLY1j4ICBddwcad0kXQEdXf3C64gHotwkp6zgPfcyVHGKnYfbioA6m4+
 yacftAcSr0mjeSPRXWHQ29pgRxjZ5S6vz7kdwXAkRp1s0CvoyDRZbCzDR2fjjOiFys9l
 zUTjDOBfN/1hT9d0lj36M7Jw7kWzw+knTl1gJcYhDknTcyBixBZjyZ2j79rm8SQ1QVl5
 k+gGnNwE0LF15FZcQd/haYlpvFbpKZxOYFVbYBFBigyOVzhbDD4J/2jpKnkMz6j5SuLa
 M3xQ==
X-Gm-Message-State: AOJu0Yz3AjvvJJtt3MOaRZLQwL7taVY3nmAI7nSIvRxOdJXUr3eJ+IEK
 h9LW9NSfZOfBEQ5MYuIKdI5RCg==
X-Google-Smtp-Source: AGHT+IHU1ZtC1U9QIDj0DA0FvUiZGB5mZ/YjYMp0hB0XPdzaikqfzWD/AfIvyIaceBBsA6KeQPDGrg==
X-Received: by 2002:a2e:8744:0:b0:2bf:ff53:556e with SMTP id
 q4-20020a2e8744000000b002bfff53556emr13590224ljj.23.1696873249322; 
 Mon, 09 Oct 2023 10:40:49 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a2e3505000000b002bcbae4c21fsm2128988ljz.50.2023.10.09.10.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Oct 2023 10:40:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon,  9 Oct 2023 20:40:45 +0300
Message-Id: <20231009174048.2695981-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/3 RESEND] drm/bridge_connector: implement
 OOB HPD handling
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
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Janne Grunau <j@jannau.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a resend, since the previous submission got no responses. The
patches have been reviewed/acked by several maintainers. Can we please
gain some attention and either get it merged or understand what should
be changed / improved. This series is required to delivere HPD events
from altmode driver to the MSM DP driver in the sane way.


Note, numbering for this series starts from v5, since there were several
revisions for this patchset under a different series title ([1]).

USB altmodes code would send OOB notifications to the drm_connector
specified in the device tree. However as the MSM DP driver uses
drm_bridge_connector, there is no way to receive these event directly.
Implement a bridge between oob_hotplug_event and drm_bridge's
hpd_notify.

Merge strategy: since this series touches i915 code, it might make sense
to merge all three patches through drm-intel.

[1] https://patchwork.freedesktop.org/series/103449/

Changes since v6:
- Rebased on top of linux-next. Fixed the freshly added
  new drm_connector_oob_hotplug_event() call.

Changes since v5:
- Fixed checkpatch warning in the first patch (noted by intel-gfx CI).

Changes since v4:
- Picked up the patchset
- Dropped msm-specific patches
- Changed drm_bridge_connector_oob_hotplug_event to call connector's HPD
  callback directly, rather than going through the last bridge's
  hpd_notify
- Added proper fwnode for the drm_bridge_connector

Bjorn Andersson (1):
  drm: Add HPD state to drm_connector_oob_hotplug_event()

Dmitry Baryshkov (2):
  drm/bridge_connector: stop filtering events in
    drm_bridge_connector_hpd_cb()
  drm/bridge_connector: implement oob_hotplug_event

 drivers/gpu/drm/drm_bridge_connector.c        | 36 ++++++++++++++-----
 drivers/gpu/drm/drm_connector.c               |  6 ++--
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 +++++++--
 drivers/usb/typec/altmodes/displayport.c      | 17 ++++-----
 include/drm/drm_connector.h                   |  6 ++--
 6 files changed, 62 insertions(+), 23 deletions(-)

-- 
2.39.2

