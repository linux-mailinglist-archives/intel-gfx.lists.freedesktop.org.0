Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2826A2F16D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 16:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5291510E58F;
	Mon, 10 Feb 2025 15:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=radix.lt header.i=povilas@radix.lt header.b="FL7Hjydb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 902 seconds by postgrey-1.36 at gabe;
 Fri, 07 Feb 2025 19:12:47 UTC
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com
 [136.143.188.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495AC10E1BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 19:12:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1738954662; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=gn8UEtBvI+BwMpjclDnIhH8zRIDpK69eMZ50/vdhc7/EoFrf2gJExaHo0Xd4Q2ZBJXdOauP4nJxHyF+4qkkQCPqJjgAtCfEkVupVxsfQLl401c85EZ2if6wn1c4haFq8tKEikufbs7HIiTfxJz5xdvyCnzxjmMDwR74LuVOqbII=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1738954662;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=sk1rtrOiFofCElnIdsNJnSAo1dCOKZ1GVC9KZKSVlQM=; 
 b=bfr0fMr8K3QPuNDyZLxWFE9eNlVnXWwkhyCWgfIAjM1BTDziAHr/JIen4/mFyk3XjwzUuki2S9BojxoYErl2qnHyMhAzJOWHX4BXzv9xe4KOR5uukwAsKkxQPbvw8f01oegFRR0GP5awlOMWHQetK13CovsXh6+5pCH4Loi87OY=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=radix.lt;
 spf=pass  smtp.mailfrom=povilas@radix.lt;
 dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738954662; 
 s=zoho; d=radix.lt; i=povilas@radix.lt;
 h=Message-ID:Date:Date:MIME-Version:From:From:To:To:Subject:Subject:Cc:Cc:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=sk1rtrOiFofCElnIdsNJnSAo1dCOKZ1GVC9KZKSVlQM=;
 b=FL7Hjydbd9fs8+v8X0s+t8yyLbpyuv427+PyUuV96WL8onid8tsxO5OkW4FghbTR
 AAvp1Neb6wikPYEikiPFNrUVeIeMlHH3Zv8LWc8ylkTr3GoDW3wnWUKGPDPee2LFcLQ
 gMebuP9wc/XK07Db7DbFhKqJ6eKgaavKWAQTY5+4=
Received: by mx.zohomail.com with SMTPS id 1738954658493587.2057579888636;
 Fri, 7 Feb 2025 10:57:38 -0800 (PST)
Message-ID: <1e5b5275-d194-4af0-8927-f5b93416a407@radix.lt>
Date: Fri, 7 Feb 2025 20:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Povilas Kanapickas <povilas@radix.lt>
Content-Language: en-US
To: "xorg-devel@lists.x.org" <xorg-devel@lists.x.org>,
 intel-gfx@lists.freedesktop.org
Subject: xf86-video-intel is broken and with MRs disables we can't fix it
Cc: ville.syrjala@linux.intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Mon, 10 Feb 2025 15:23:40 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

xf86-video-intel driver is currently cannot be compiled with released
versions of X server. Simple reproduction steps: create Debian Bookworm
container, download module sources and all required dependencies and try
to build.

Debian Bookworm is pretty much the least exciting configuration
possible. And the fact that xf86-video-intel cannot be compiled there is
not good.

For almost any other driver this is not a problem, because it is
possible to create a merge request on gitlab.freedesktop.org. Eventually
simple maintenance and build-related merge requests are merged. However
in the case of Intel driver, merge requests are disabled and the
recommended way to submit patches is via intel-gfx@lists.freedesktop.org
mailing list. Unfortunately, patches submitted so far are ignored there.

Given that the last commit to xf86-video-intel was 22 months ago, I
suspect there's little interest from Intel to spend time maintaining the
project.

What do you think about opening up merge requests on the repository so
that at least the driver can be brought back to compilable state? Does
anyone have other ideas how the current situation could be resolved?

Regards,
Povilas
