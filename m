Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD54F39717D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B7DA6E7DC;
	Tue,  1 Jun 2021 10:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 767456E7DC;
 Tue,  1 Jun 2021 10:30:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EB61A41FB;
 Tue,  1 Jun 2021 10:30:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
Date: Tue, 01 Jun 2021 10:30:59 -0000
Message-ID: <162254345942.19252.7077012777366861117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210529043327.2772051-1-chengzhihao1@huawei.com>
In-Reply-To: <20210529043327.2772051-1-chengzhihao1@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Fix_return_value_check_in_live=5Fbrea?=
 =?utf-8?q?dcrumbs=5Fsmoketest=28=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/selftests: Fix return value check in live_breadcrumbs_smoketest()
URL   : https://patchwork.freedesktop.org/series/90817/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9f93f64b2ec8 drm/i915/selftests: Fix return value check in live_breadcrumbs_smoketest()
-:19: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; chengzhihao1@huawei.com; yukuai3@huawei.com', should be: 'intel-gfx@lists.freedesktop.org; (dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; chengzhihao1@huawei.com; yukuai3@huawei.com)'
#19: 
Cc: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; chengzhihao1@huawei.com; yukuai3@huawei.com

-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
Subject: [PATCH] drm/i915/selftests: Fix return value check in live_breadcrumbs_smoketest()

total: 0 errors, 2 warnings, 0 checks, 10 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
