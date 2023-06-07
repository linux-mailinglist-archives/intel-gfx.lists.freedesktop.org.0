Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C17264B1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 17:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F058C10E09D;
	Wed,  7 Jun 2023 15:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8147910E09D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 15:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686151888; x=1717687888;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eUY2SkjNEYvBGg3bHgwJqERClbAyhizDkfgZWBJvtV4=;
 b=BpbGn6saM29ep3LT+im4DlFSnbse2ttF8Sni7v9oHKVb2In9fSKvqVq0
 eisZCbkdBb+aSHkaQT3PKugEh5AT3pbmm1vZXnLPB3S5ppBnQL5QEUOGA
 q4yNcTV5YJkArUf7ocHU7RVtWxnPzRmRmj3eh/GbF7c/GuehAQVa6rqrp
 py6ZPzRDMAp9JbztUEdhbeXEyHj+yr0BoYP+5NtFTpdl9OmPP1cGJS1kO
 qD26sNoUoXw6FkNtilc9itzFLS63Za4VH7zvJ/FZRp9GhRs5DU0P+9cMS
 8uBpmCwfxeKLAF68GvoTEQJdkesVG07ksjcbH51wBKlKNqawIbElrBWpa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337385463"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="337385463"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="709600346"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="709600346"
Received: from vsmyers-mobl2.amr.corp.intel.com (HELO [10.212.146.233])
 ([10.212.146.233])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:31:24 -0700
Message-ID: <a20344fd-8130-013e-e773-acae81aad55a@intel.com>
Date: Wed, 7 Jun 2023 08:31:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Borislav Petkov <bp@alien8.de>
References: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
From: Dave Hansen <dave.hansen@intel.com>
In-Reply-To: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] x86/mm: Fix PAT bit missing from page
 protection modify mask
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
Cc: Juergen Gross <jgross@suse.com>, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/7/23 08:23, Janusz Krzysztofik wrote:
> 
> Extend bitmask used by pgprot_modify() for selecting bits to be preserved
> with _PAGE_PAT bit.  However, since that bit can be reused as _PAGE_PSE,
> and the _PAGE_CHG_MASK symbol, primarly used by pte_modify(), is likely
> intentionally defined with that bit not set, keep that symbol unchanged.

I'm really having a hard time parsing what that last sentence is saying.

Could you try again, please?
