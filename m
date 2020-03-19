Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCFD18BF0B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 19:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6801D6EA4C;
	Thu, 19 Mar 2020 18:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60136EA4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 18:07:04 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id n20so2411102lfl.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 11:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=F8DTtpZqCm0qkMoBgsOb2tz42hlbQMZxVJsanBcXZxs=;
 b=C5SQsc5MalKP1FDEWLC3AFJajX8i+5IJldO+iGgHeqBO8Po9GP0CSJVHDJ7BoUITOQ
 3LNhiBU92RN4JnnwH+QroKH2mXf9UXYHSbJVY8qHQfnBfsMOewB6mmtu8xFlmoYSZuSs
 5XlbeJFUfHZFtGc1+CbnyEMEW4gD9awaPcOw8yHitCrOMS4crxAtZgCBLLwnmPtojV1a
 k2NQ1jnNTHiR2IC/E5bCT2Enl5UpFzMyq0ggnFhai/GYZFDY20epduwbOVpfavt0qzHD
 RTFmlb40p3ycAhL4JXWPtbKoh/FZtY2VeXJbwt0eVpzDVPGh3rxP0w8YmoUiIJ/X9iKB
 l7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F8DTtpZqCm0qkMoBgsOb2tz42hlbQMZxVJsanBcXZxs=;
 b=WrjJrPlDEe6Jd3wf0hWeGny5v0CqnePnzH9L16991470thEWYkmPQsODeVNa3qtxh6
 sF+do1mncrqsq3DF95Qg1y7FsTvnRfqOs95EvKyD83y4Z/Ga1nx5C3Icy+evF1SZGBvG
 iNLhP4ELMa5MT86OKm7OyRkAAtTyaJnxhr3MN+nhx5UB++7sQNKIW/WDvphtrwV86wsR
 Pyx+C0Uyl61cpVjI+s/e9j+FghqHDrz6Tzto+CMm6oGELRMsTcnOK1iSxIpJjL2WMC4D
 yr5GAVzNFE9klOjvAHEjM5mMEjDomds5VB+YdKSHWHPuQoxtNMmgQRrUbKv/0o5Xo0uh
 Fdrw==
X-Gm-Message-State: ANhLgQ0ix/J9JpQEWi6PbljZNR35KWWm8F46QnviRdVcXmiXTvjGnelj
 WzbgFItWlMrpo1g92y+WNTOwcS0+wsM=
X-Google-Smtp-Source: ADFU+vtyykR8f3fZpjmqZCWb/p+Odbx5W0K8bBT4zznLMRusG1dlyBDLpPKMRK6dH5K6jSSvb06y6Q==
X-Received: by 2002:ac2:4476:: with SMTP id y22mr2803341lfl.61.1584641222658; 
 Thu, 19 Mar 2020 11:07:02 -0700 (PDT)
Received: from localhost.localdomain (mobile-access-b0485e-106.dhcp.inet.fi.
 [176.72.94.106])
 by smtp.gmail.com with ESMTPSA id y8sm1902066lfg.65.2020.03.19.11.07.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 11:07:02 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 20:06:57 +0200
Message-Id: <20200319180658.5667-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 0/1] Test over 32k long stride length on icl+
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Testing part is left with TODO comment for anything older than gen5

Test-with: 20200319180322.5451-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (1):
  drm/i915: Allow gen11 to use over 32k long strides

 drivers/gpu/drm/i915/display/intel_sprite.c | 30 ++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
