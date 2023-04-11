Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29CF6DE0D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 18:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080F110E5A8;
	Tue, 11 Apr 2023 16:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83DC110E59C;
 Tue, 11 Apr 2023 16:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681229954; x=1712765954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ebv4X64ieNfiXnAWTir2mKL5gEmR+YcgoH8Y0iy78V4=;
 b=gOL7cIorWSqg18rC86I/6csjeglqX4LsG9n/wlwgATswQCmXf6KSQnmd
 rL0A39zYDOvSvz/eeWc3JZTNwmg9r1pTQSwiWACgEc16Lsp9AvWx9Ttol
 hNy3W/WFIF662TgevCz1nut/V/orrrY5EG2pJl0mBTNCefBFPF7q2+Qim
 TBViPIzuvAt2Z5QjeHRqOMPuK5WdVMzFwO37zM1BWSY5RTP4ii4siw5am
 nPeMcpICC3UGsRWomqJgwGZZHJXwrxHnELI3ggEt4RJ2seHkHoCP90QGf
 yKB7M2zXAggv3wlb1eX3eDJ0fiiMAHqO8+JQrEm4HVpYnS10i7wjJfwhE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345452834"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="345452834"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 09:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="688634389"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="688634389"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 09:19:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: igt-dev@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Date: Tue, 11 Apr 2023 09:19:06 -0700
Message-Id: <168122983958.3152898.432397312184705707.b4-ty@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230404170737.1856619-1-lucas.demarchi@intel.com>
References: <20230404170737.1856619-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH i-g-t v2] tools: Add tool to dump
 GuC/HuC CSS header
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, 04 Apr 2023 10:07:37 -0700, Lucas De Marchi wrote:
> Since we are now using unversioned GuC/HuC, it's useful to be able to
> dump the firmware blob and get that information from the CSS header.
> Add a tool that decodes that information and dumps the raw header.
> 
> Example output:
> 
> 	$ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
> 	version: 70.5.1
> 	date: 2022-09-09
> 	raw dump:
> 	00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   ................
> 	00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   ......" q...@...
> 	00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @........!E.sys_
> 	00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   gbsbPC-1.0.3150.
> 	00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   ..F.............
> 	00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
> 	00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
> 	00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   ..............@.
> 
> [...]

Applied, thanks for the reviews.

[1/1] tools: Add tool to dump GuC/HuC CSS header
      commit: 2da179d399d83a6859a89176d83b7ec1d71fe27a

Best regards,
-- 
Lucas De Marchi <lucas.demarchi@intel.com>
