Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7107AD86C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 14:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3AC10E24E;
	Mon, 25 Sep 2023 12:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1316 seconds by postgrey-1.36 at gabe;
 Sun, 24 Sep 2023 01:03:11 UTC
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7974D10E08A
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Sep 2023 01:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:
 Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E077wAdyEkVySS1+LXo/H+AZNFp/cAK0I9hfQH/1Dmc=; b=bfedigwJ9dJryvC4sxxFFrruxQ
 UOiofSrSMVdXPlnjBepLh3H6VOO+KwQglGV/5VOxNXVfH+eWgCJ+kON0tlwvmf7lsaTKJPI0nbbmD
 Wo/BBRhvWlq9TiEC9e9TZkgdwDNxgCDditCaJ53zTQgfCIoDUvERXrOV3UdkPK1pDQJWMnODNccm+
 7WDwMLtnTdBAr9i7tSlOgIxE0WkSgRrWqTbXgj52Etmjy0JKnkJzY9q3/wq4cOdscVtzSXyRUVngK
 HiE8TcxifIB5wmGw6pQtu3Q1W4lLHHmNeujcWy9WSChZyZCElKns30wvHxOdPc/wfBsqFEC7vSfvN
 yR6nmSOg==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1qkDBL-0018ci-19;
 Sun, 24 Sep 2023 00:41:07 +0000
Date: Sun, 24 Sep 2023 00:41:07 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: matthew.brost@intel.com, mgreer@animalcreek.com,
 krzysztof.kozlowski@linaro.org
Message-ID: <ZQ+Fo9WKyGphwI8R@gallifrey>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-12-amd64 (x86_64)
X-Uptime: 00:32:50 up 8 days,  3:31,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Mailman-Approved-At: Mon, 25 Sep 2023 12:59:26 +0000
Subject: [Intel-gfx] ERR_PTR(0) in a couple of places
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
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,
  I randomly noticed there are a couple of places in the kernel that
do
   ERR_PTR(0);

and thought that was odd - shouldn't those just be NULL's ?

1) i915
  drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c : 47

    if (i <= 1)
      return ERR_PTR(0);

  from f9d72092cb490 

2) trf7970a
  drivers/nfc/trf7970a.c : 896

      trf->ignore_timeout =
         !cancel_delayed_work(&trf->timeout_work);
      trf->rx_skb = ERR_PTR(0);
      trf7970a_send_upstream(trf);

   from 1961843ceeca0

Dave
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
