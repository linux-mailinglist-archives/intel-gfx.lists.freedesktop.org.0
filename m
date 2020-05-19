Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9F41DA455
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 00:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1750C6E393;
	Tue, 19 May 2020 22:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1DF6E393
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 22:16:28 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id a23so1056370qto.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 15:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=+n48J7SDOms/3rVbtXkJDi+uLvipTi88uEak3gJc6kM=;
 b=bhmoUryvBO1VMVpVzg2PLJj0wW9UGDRt1OKv7xTOpkGjoCao5jyBYrwuRQ4RlRoxgw
 nZuQI6vDc2e1iHyVa4FJBueECZhixEPbFs0RVwjjTnH5lnDqcpWWiBRTEW4C9Z1KhZhA
 Hnu9evsk7lx5PyRuqUGdJmGf6nd4OWtAg8tLDCGM1W/Xf2w5mNSmBdrwcwZkD16zJm69
 nvEJn5vqf9SArAqa2xxQcUv+/3CXRXdusmPrV38RdtRFjo/HNMXfkFiz0XYlGz3/wwOi
 FU37/5t52bRzsBa4GtZpuS9ffxvolNY+KR4adzzjMZWqq9PCG7ISHxvk6mfTHoBR9BjE
 dLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+n48J7SDOms/3rVbtXkJDi+uLvipTi88uEak3gJc6kM=;
 b=h69JKhcqdrkEV2fpnGXkY1Jn24U1W+C5NPWXmW+xFXUP4xq5vl0uC0y3XSLxiHnzEm
 8C+a0yYzi3pMLld3e6UdeUybFCEUDPm1/FBAo710v9VJPhamNMkEqWsWvGyx2VRDDWuh
 FiCtHGQXYMve9nKfv63CqD0CVVrr3SW5UOo63A/u6bmSCNfvDue/hvPuYInRvw7WFK6s
 KFE7pDXqwv33t+LTVMCHc/qP3PNyVf7TspwcDZsFpLf2dhyCemA+Z8RE5arlGg9dh+jl
 +UwUyN02MIWxN0agqLJnQ6r6/q5q7dpX5jsSR/o5hM3bPgetGBt7EpBcmXgrPD11cgFW
 nyXw==
X-Gm-Message-State: AOAM5325b637hEi+EqXpPh94kQZbtfjBtGc6hzu6nV9S0gw+L7g3x5Jp
 giwbDl85awymTPIf/fc32GQEFw==
X-Google-Smtp-Source: ABdhPJywcJMJM0yunf7bLLO2E4Uc6nzMFQul6gfD7aBELFK7EtVclUjIUqpcXiLwuC08XRonZWNhcw==
X-Received: by 2002:ac8:3664:: with SMTP id n33mr2323760qtb.363.1589926587578; 
 Tue, 19 May 2020 15:16:27 -0700 (PDT)
Received: from localhost (mobile-166-177-185-175.mycingular.net.
 [166.177.185.175])
 by smtp.gmail.com with ESMTPSA id f16sm913445qtc.69.2020.05.19.15.16.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 May 2020 15:16:26 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 18:16:21 -0400
Message-Id: <20200519221621.19931-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Add additional R0' wait
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
Cc: seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

We're seeing some R0' mismatches in the field, particularly with
repeaters. I'm guessing the (already lenient) 300ms wait time isn't
enough for some setups. So add an additional wait when R0' is
mismatched.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2cbc4619b4ce..924a717a4fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -592,6 +592,9 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 						  bstatus);
 		if (!ret)
 			break;
+
+		/* Maybe the sink is lazy, give it some more time */
+		usleep_range(10000, 50000);
 	}
 
 	if (i == tries) {
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
