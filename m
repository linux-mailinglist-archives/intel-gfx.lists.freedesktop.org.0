Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E26ACA304DF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 08:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9D810E3A9;
	Tue, 11 Feb 2025 07:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="hnZsiST9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACAC10E3A9;
 Tue, 11 Feb 2025 07:51:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5340E5C014A;
 Tue, 11 Feb 2025 07:50:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340DDC4CEDD;
 Tue, 11 Feb 2025 07:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1739260267;
 bh=xB7wqO8GV0UiE7M1qm9Vc5gN8ponBk1qffuh3WEpZlU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hnZsiST9VrTFxz3zGkhorbUAajCKHERm12afJA/ypi8uf8LcWdWFBgtiYIX1IP3ty
 ZroVbVuhmBqEXSom6WK9Vj3ZuIDSW8u7/lyLtEkK9CWEsEI2/xkQre3hFxpxmFmXr0
 junKDov2ypwWcEpByJaI+WFMdWwKGS7tSGlUhn3LymREWQMDUlc8ROINYw+AKQ2Bvm
 fJSrPUEYA2VFHYYy8/szMIpqce8x+1Dn2puIZywNRInzQNQA+MGBa7NKTzpYYobwWf
 u87OcR9c7CKdceOGPPZ1RDO7+D5syqrGWEnJyNBX3h9S/cQXRcHAbxdgbnC5nLbd+h
 uK+muQ/jrlnJA==
Date: Tue, 11 Feb 2025 09:50:55 +0200
From: Mike Rapoport <rppt@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: Re: Regression on linux-next (next-20250205)
Message-ID: <Z6sBX-tPotgS2ARh@kernel.org>
References: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

Hello Chaitanya,

On Mon, Feb 10, 2025 at 06:52:35AM +0000, Borah, Chaitanya Kumar wrote:
> Hello Mike,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> Since the version next-20250205 [2], we are seeing the following regression
> 
> `````````````````````````````````````````````````````````````````````````````````
> <4>[  314.781734] kmemleak: Found object by alias at 0xffffffffa0595000
> <4>[  314.781738] CPU: 11 UID: 0 PID: 6042 Comm: i915_selftest Tainted: G     U             6.14.0-rc1-next-20250205-next-20250205-ged88b8b82c53+ #1
> <4>[  314.781741] Tainted: [U]=USER
> <4>[  314.781741] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI, BIOS 0812 02/24/2023
> <4>[  314.781742] Call Trace:
> <4>[  314.781743]  <TASK>
> <4>[  314.781744]  dump_stack_lvl+0x91/0xf0
> <4>[  314.781749]  dump_stack+0x10/0x20
> <4>[  314.781751]  __lookup_object+0x90/0xa0
> <4>[  314.781755]  __find_and_get_object+0x6c/0x190
> <4>[  314.781758]  paint_ptr+0x1b/0xa0
> <4>[  314.781759]  kmemleak_not_leak+0x33/0x70
> <4>[  314.781762]  load_module+0xa20/0x2d10
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
 
Does this fix it for you?


diff --git a/kernel/module/main.c b/kernel/module/main.c
index 4a02503836d7..a598888e7072 100644
--- a/kernel/module/main.c
+++ b/kernel/module/main.c
@@ -1260,7 +1260,8 @@ static int module_memory_alloc(struct module *mod, enum mod_mem_type type)
 	 * *do* eventually get freed, but let's just keep things simple
 	 * and avoid *any* false positives.
 	 */
-	kmemleak_not_leak(ptr);
+	if (!mod->mem[type].is_rox)
+		kmemleak_not_leak(ptr);
 
 	memset(ptr, 0, size);
 	mod->mem[type].base = ptr;


> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250205
> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250205/bat-rpls-4/dmesg0.txt
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250205&id=64f6a4e10c05ed527f0f24b7954964255e0d3535
> 
> Regards
> Chaitanya

-- 
Sincerely yours,
Mike.
