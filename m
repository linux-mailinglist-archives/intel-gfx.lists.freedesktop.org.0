Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0897E6648C2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 19:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE4110E12A;
	Tue, 10 Jan 2023 18:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE24010E120;
 Tue, 10 Jan 2023 18:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1673374469; bh=BP8fagD2rIBJsB+DjFjKHbnp/WzXsnoEt5DapCoyVWU=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:MIME-Version:
 Content-Type;
 b=Jn1YXEur7bthJi5xxwfIkStoLuh4tBqDhZ9GjSAW8fs+0J5L6Uf59jCz/ZNA9Nm/Z
 yJ23slL+CIe5YnX9cbwA6ZT9QHQwLacRy9yaXBK3S0SMPGseQZWHfXAtJQQysYo8Qa
 Pxe1oFmxspxpsr2tBJMB3Q9Acw9ygUJVazgzxPhw=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Tue, 10 Jan 2023 19:14:29 +0100 (CET)
X-EA-Auth: QNB2G+cU2H9ThzhKZlRn8Hg9+WHzGrrh9Qs6+1zlJ9VmyoQAT61YO+A7FAMrUmIwj/4NOqQHuch6mRZiyGECDgtiPBNBHvxG
Date: Tue, 10 Jan 2023 23:44:24 +0530
From: Deepak R Varma <drv@mailo.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Message-ID: <cover.1673343994.git.drv@mailo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH 0/2 v2] drm/i915: Avoid full proxy f_ops debug
 attributes
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
Cc: Praveen Kumar <kumarpraveen@linux.microsoft.com>,
 Saurabh Singh Sengar <ssengar@microsoft.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series proposes to replace a combination of DEFINE_SIMPLE_ATTRIBUTE() +
debugfs_create_file() by a combination of DEFINE_DEBUGFS_ATTRIBUTE() +
debugfs_create_file_unsafe(). The change reduced overhead in terms of managing
the full proxy f_ops at runtime. The patches 1 & 2 covers for the DRRS and FBC
f_ops debugfs attributes respectively.

Following coccicheck make command helped identify this change:
    
make coccicheck M=drivers/gpu/drm/i915/ MODE=patch COCCI=./scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

Changes in v2:
   - Individual patches clubbed in patch set
   - Update patch log message to include coccicheck make command


Deepak R Varma (2):
  drm/i915/display: Avoid full proxy f_ops for DRRS debug attributes
  drm/i915/fbc: Avoid full proxy f_ops for FBC debug attributes

 drivers/gpu/drm/i915/display/intel_drrs.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_fbc.c  | 12 ++++++------
 2 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.34.1



