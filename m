Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE5A2F16F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 16:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEA410E592;
	Mon, 10 Feb 2025 15:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=radix.lt header.i=povilas@radix.lt header.b="aJGBTUOw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com
 [136.143.188.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6077710EBB5
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 22:24:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1738967071; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=bUIeYxOQbvKX1AGhabYWLmqrGEkotd4IhzAgTshU7Ylb0tQWn3TqqBEjxO75mudjvbx03y9kcRkxn13w+P/Xjw3wSa/K6buoP24ae4yrQL3Sb0xzheppXM6AS151RY/rRBcxw4D3aQui7fgvY7+4JhfHFWFaPlaIjijAywTQoQE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1738967071;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=iKDlp0bgCgb8f+zAiYin88hU74kvH/vqffirN03PypA=; 
 b=STtUdN9+P3KBSvHsxbp36ZfwgzdtelVqtVSRKBfjDWF+DO/giZ3qvuFpNt+Znm+CYTI7UrX7mLSi/uOA18LI+nZYb3y4NgrD8jdCSHDJCqNrqKCwDLFONXHNr5W3o6iXQgiqEPAPaAOEiXGX1u04UmuF6fu123+wf5+MMblbylI=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=radix.lt;
 spf=pass  smtp.mailfrom=povilas@radix.lt;
 dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738967071; 
 s=zoho; d=radix.lt; i=povilas@radix.lt;
 h=Message-ID:Date:Date:MIME-Version:From:From:To:To:Subject:Subject:Cc:Cc:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=iKDlp0bgCgb8f+zAiYin88hU74kvH/vqffirN03PypA=;
 b=aJGBTUOwJxlIh0pHor6bxnxxkHw+zcKnwMaQA3oYwpdl998og2uLAUErboCDtJON
 QufZEH5UxYCdc2GHOwFzFxrPociDBqnB6oyiNKgLfNRa1oYYnv9aQiv+0MjFNowmWZd
 xrCC2p2/mmwDoxGKJRY3KIgKPWSpWQAPG1gKL3O4=
Received: by mx.zohomail.com with SMTPS id 1738967068447485.78762200729204;
 Fri, 7 Feb 2025 14:24:28 -0800 (PST)
Message-ID: <77434761-e627-4a82-8482-34e6cce79349@radix.lt>
Date: Sat, 8 Feb 2025 00:24:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Povilas Kanapickas <povilas@radix.lt>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel] meson: Add dependency on xv
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
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

Symbols such as XvCreateImage, XvPutImage, XvGetPortAttribute come from
libXv.so. Linking to this dependency directly fixes build errors on
Debian Bookworm against xserver 21.1.
---
 meson.build                      | 1 +
 src/legacy/i810/xvmc/meson.build | 1 +
 xvmc/meson.build                 | 1 +
 3 files changed, 3 insertions(+)

diff --git a/meson.build b/meson.build
index 227ca2eb..553902bb 100644
--- a/meson.build
+++ b/meson.build
@@ -157,6 +157,7 @@ endif
 
 with_xvmc = get_option('xvmc')
 if with_xvmc
+  dependency('xv', required : true)
   dependency('xvmc', required : true)
   dependency('dri2proto', required : true)
   dependency('x11', required : true)
diff --git a/src/legacy/i810/xvmc/meson.build b/src/legacy/i810/xvmc/meson.build
index cd05f3ef..3505f15b 100644
--- a/src/legacy/i810/xvmc/meson.build
+++ b/src/legacy/i810/xvmc/meson.build
@@ -4,6 +4,7 @@ shared_library('I810XvMC',
 	       sources : 'I810XvMC.c',
 	       dependencies : [
 		 dependency('x11', required : true),
+		 dependency('xv', required : true),
 		 dependency('xvmc', required : true),
 		 dependency('xorg-server', required : true),
 		 dependency('libdrm', required : true),
diff --git a/xvmc/meson.build b/xvmc/meson.build
index 0ecc51e5..eeba2b66 100644
--- a/xvmc/meson.build
+++ b/xvmc/meson.build
@@ -14,6 +14,7 @@ shared_library('IntelXvMC',
 	       dependencies : [
 		 dependency('threads', required : true),
 		 dependency('x11', required : true),
+		 dependency('xv', required : true),
 		 dependency('xvmc', required : true),
 		 dependency('xorg-server', required : true),
 		 dependency('x11-xcb', required : true),
-- 
2.39.5
