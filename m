Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7C121BDAC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 21:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03C56ECF8;
	Fri, 10 Jul 2020 19:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7296ECF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 19:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594409515;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HacSkUNLds5/sRRLINbKn+YLzCPd/xRoJbqAEYCBS+s=;
 b=G/wyBrv89Wn83Qtox44sxS3ckQ6n2S4JeVPKCySST86GcYiYqzMBPn44vXHxK4jrFjawLK
 /Zechjf0PMQhzjEl04k+/xOQjpoklw1CUqg9shRi3tqzeEFVQVhpC7VAbSmKACsylzthPR
 2++Tu0jJevyWJyGuSaYfBgJWKr90/Sg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-itt6DS7PPaKGhxRz9OOF2A-1; Fri, 10 Jul 2020 15:31:53 -0400
X-MC-Unique: itt6DS7PPaKGhxRz9OOF2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71E5C100AA22;
 Fri, 10 Jul 2020 19:31:52 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-112-154.rdu2.redhat.com
 [10.10.112.154])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08C2910016E8;
 Fri, 10 Jul 2020 19:31:51 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 10 Jul 2020 15:31:42 -0400
Message-Id: <20200710193144.94751-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH v3 0/2] drm/probe_helper,
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

 drivers/gpu/drm/drm_crtc_helper_internal.h  |  7 +-
 drivers/gpu/drm/drm_probe_helper.c          | 94 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 55 ++++++++----
 include/drm/drm_modeset_helper_vtables.h    | 42 +++++++++
 4 files changed, 147 insertions(+), 51 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
