Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E000655E74
	for <lists+intel-gfx@lfdr.de>; Sun, 25 Dec 2022 23:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1819510E0C4;
	Sun, 25 Dec 2022 22:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from domac.alu.hr (domac.alu.hr [161.53.235.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DA510E0C4
 for <intel-gfx@lists.freedesktop.org>; Sun, 25 Dec 2022 22:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by domac.alu.hr (Postfix) with ESMTP id DA5A3604F1;
 Sun, 25 Dec 2022 23:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1672008522; bh=oNApb5QM5s75fshbNGtiiUvijVtwdbWnm6jGOhvSEAs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ho/xmpq7FLRDKwyY9qHacbVb0YL+BHqL1jB7D7btxkrX/aj/hCOGHneh/TiIgT4dR
 WD3GFtVPCXcvsWiyQJjjZBKK4by6Et6N3ZBS81kq15hvgdzmNd5wAtmFvAZxiIgO+i
 IvwOHRNLXxWuFeInlpz2Am0T6loK42u4/d89fDdbZd8rNvmx4YDGMzpR3iuZzcshUl
 r9OnqT4FhCeHu8QdnWNy9iq0CJLhy4YNn5O+nLzwrKzblnMDI0QL7HWSXvUAGCw3Aj
 bk2y9FMr876doxsQh0u9bvbKck/irfO3Lxy07keelovr8ylTWBaO7UalCIJyRMxw5M
 LL1//Dt/JF3xA==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
 by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ps51lI9qI_Y5; Sun, 25 Dec 2022 23:48:40 +0100 (CET)
Received: from [192.168.0.12] (unknown [188.252.198.170])
 by domac.alu.hr (Postfix) with ESMTPSA id 4A862604F0;
 Sun, 25 Dec 2022 23:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1672008520; bh=oNApb5QM5s75fshbNGtiiUvijVtwdbWnm6jGOhvSEAs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=uj5NpnHxJs3ls32FpngWd3WXHtrIgYkQWCThCyX1fpILPZvF+6Wiwj68F7APSh5Yg
 u2AuxWkLTsyXpMTd1E1xq2JLdytud7BzPyrFAcEAjZkbkHSI9d9+fJC43CthExU+EC
 CG7dUBFUCM7BOtmyVVvamRFqg6awOgaCtFiYbE6PMKev+1CKd7OL6EA7LH6F9BUezt
 AmLxS1cxaRkvdgRRe560+OMtTp3d4QaclvNMIUcfmLSnLEHBhIs0ncaQuj1/at2sUZ
 yxvH3AlFqAC0xXujriCM/y9g7FV7uhZ4cN2bXhPwobVmNT5W1dJM1M2H4cPUASPMMt
 0UF9gX0D0aWrw==
Message-ID: <edab9da6-df81-7167-acdd-f2ea22c7ed90@alu.unizg.hr>
Date: Sun, 25 Dec 2022 23:48:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
 <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
 <619bdecc-cf87-60a4-f50d-836f4c073ea7@alu.unizg.hr>
 <8e080674-36ab-9260-046e-f4e3c931a3b9@alu.unizg.hr>
 <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
From: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>
In-Reply-To: <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] LOOKS GOOD: Possible regression in drm/i915 driver:
 memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22. 12. 2022. 09:04, Tvrtko Ursulin wrote:
> 
> In the meantime definitely thanks a lot for testing this quickly and reporting back!

Don't think much of it - anyone with CONFIG_KMEMLEAK enabled could have caught this bug.

I was surprised that you found the fix in less than an hour without me having to bisect :)

Kind regards,
Mirsad

--
Mirsad Goran Todorovac
Sistem inženjer
Grafički fakultet | Akademija likovnih umjetnosti
Sveučilište u Zagrebu
-- 
System engineer
Faculty of Graphic Arts | Academy of Fine Arts
University of Zagreb, Republic of Croatia
The European Union

