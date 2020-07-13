Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F40C21DE3A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 19:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC686E51D;
	Mon, 13 Jul 2020 17:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7DF89FE8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 17:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594660091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Hr/kaW7+oMFB0cvy2b27XuMOCWJEc0lGVrzPi6zJbOY=;
 b=JRPxm9VbrIHebqhvFDl+dMslBBoxPmfzjqZxFYu5EsxSDepsO+tX6j3cl7UVhD2pwrnpOF
 sGTr3PvIDDXMhgPHVfedLxOWqYfquCLvibEkEPio1bi4wIeuTeJMAHfHfr3KDfCSFl4uM1
 3gF2/7p97WqiNWoM6OOf2WriXzZREug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-Csy64op8MYu3VaoCi_hh4Q-1; Mon, 13 Jul 2020 13:08:08 -0400
X-MC-Unique: Csy64op8MYu3VaoCi_hh4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D0D28B4261;
 Mon, 13 Jul 2020 17:07:50 +0000 (UTC)
Received: from Ruby.redhat.com (ovpn-119-224.rdu2.redhat.com [10.10.119.224])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAEA41053B3D;
 Mon, 13 Jul 2020 17:07:49 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 13:07:44 -0400
Message-Id: <20200713170746.254388-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH v4 0/2] drm/probe_helper,
 i915: Validate MST modes against PBN limits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Something we've been missing for a while with drivers that support MST
is being able to prune modes that can't be set due to bandwidth
limitations. So, let's go ahead and add that. This also adds a new hook
that was needed, mode_valid_ctx, so that we can grab additional locks as
needed when validating modes.

Lee Shawn C (1):
  drm/i915/mst: filter out the display mode exceed sink's capability

Lyude Paul (1):
  drm/probe_helper: Add drm_connector_helper_funcs.mode_valid_ctx

 drivers/gpu/drm/drm_crtc_helper_internal.h  |   7 +-
 drivers/gpu/drm/drm_probe_helper.c          | 101 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  55 +++++++----
 include/drm/drm_modeset_helper_vtables.h    |  42 ++++++++
 4 files changed, 151 insertions(+), 54 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
