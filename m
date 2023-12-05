Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEB1805580
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEF810E51F;
	Tue,  5 Dec 2023 13:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EDC710E51F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701781786; x=1733317786;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=AN5V2TpNDwcqp2vthM53uHVQ/gZoA3dYH9X28gto1nw=;
 b=H+qxSOLey3TAfeh9G5+bef74UwksO4pZyPxnZrQrY8oPdPb80e6a2eyM
 Q4cqIEd8TdeC0bvxDlsuS8tcv20Ir3BCGWuBfmtqfC2lhqU7PsX3pXHAX
 MEIO+zqK3DzQTXwsKPCSeM5MEsw0uiHyEnRDkHva8KYhgM84VOjK0QCh9
 yRZhSHujN9MAXD0ohD5jo6TBsg0hpUQu9cankxVeyDymMNmpP9jsqhtFw
 s6vrxxnT96pfM3rNon+O7fhUxU0rXFEp4UM6sCUUUY/ZjMvdB+cydJ22f
 fejewaEFjj0g5XLAljFR4kIAsqORb0JmI0KipHEeM2ene97jtEv10LEFB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="15439231"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="15439231"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:09:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="888929375"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="888929375"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:09:44 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Tue, 05 Dec 2023 14:09:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231205-selftest_wait_for_active_idle_event-v2-1-1437d0bf9829@intel.com>
X-B4-Tracking: v=1; b=H4sIABAhb2UC/5WOWwqDMBBFtyL5boqJVEO/uo8iIY+xDmiUZEhbx
 L03uoN+HjjcczeWICIkdq82FiFjwiUUkJeKudGEF3D0hZmsZSOEVDzBNBAk0m+DpIclauMIM2j
 0E2jIEIi31nVSOS9aU7OytEYY8HNWnn1haxJwG01w47Ht48wJ18McMdESv+edLA7/v3IWXHBo2
 puzykqvugcGgunqlpn1+77/AOTJRCbwAAAA
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1505;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=AN5V2TpNDwcqp2vthM53uHVQ/gZoA3dYH9X28gto1nw=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlbyEX+4i/4zJEiuGMhfLWYLOvB9VoBTaCseUW0c29
 D/4HnY6JAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZW8hFwAKCRAjYrKT3hD91wpzDA
 CMDwKD/Z89Ndc3ZLEEedWT3vWpPP5jLl14B7NZ/uABiguske8zIHq9zwsgRnh2Er+5QhDd/bmtNwMc
 HJIX4XgVdOTkSo/SrRJe14w0PwEHNctLGf2tIUtvAO6F8z0EWuJ0SlmNgkXhTg/j64R6nvHOUIQIqP
 zTjrX41Xfq4IXoXEoK8V8sQfRyaCq/skBvpI1vtcjmKkwNa6DHxYO+x46k4iLYOiUfR6GxlENLgSjF
 GmXOA1KTpDLcl60wVCiyItOfgmDH7cESyRiM0VvPfyuTjrz07uBVfrM2iVHQJBwwKbwFONOJx49lxI
 EnSQDDUMGVDEA/oQZlbvcVkmJLV/lFu2n6xE3jz+0TQ3TB/IbN9oc37t9lxZVDjovmFTRKXQKPABTC
 w8i+t1TwqCfvg3jz68PlZ5W1wU5OjFlh+mAu1+eTgZVQB11o0n0BossTlCTgxjEjB9BQnlOaVVft1S
 6/IHFC85HDIiO5WSGrZmjGHKAKygNCSTmgXsw4Shb3c6w=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: wait for active idle
 event in i915_active_unlock_wait
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After i915_active_unlock_wait i915_active can be still non-idle due
to barrier async handling in signal_irq_work. As a result one can observe
following errors:
bcs0: heartbeat pulse did not flush idle tasks
*ERROR* pulse active pulse_active [i915]:pulse_retire [i915]
*ERROR* pulse    count: 0
*ERROR* pulse    preallocated barriers? no

To prevent it let's wait explicitly for idleness.

v2: wait only in live_idle tests

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
- Link to v1: https://lore.kernel.org/r/20231128-selftest_wait_for_active_idle_event-v1-1-e365cb8b2d87@intel.com
---
 drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index 273d440a53e3f4..bc441ce7b380d3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -84,7 +84,7 @@ static struct pulse *pulse_create(void)
 
 static void pulse_unlock_wait(struct pulse *p)
 {
-	i915_active_unlock_wait(&p->active);
+	wait_var_event_timeout(&p->active, i915_active_is_idle(&p->active), HZ);
 }
 
 static int __live_idle_pulse(struct intel_engine_cs *engine,

---
base-commit: f5e7a8caf6f5520ceb37c0e2e0d359a110c7cf98
change-id: 20231128-selftest_wait_for_active_idle_event-6bc728cd16a0

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

