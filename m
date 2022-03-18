Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C84DD5F5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 09:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF49A10E74D;
	Fri, 18 Mar 2022 08:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E560510E74D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 08:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647591482; x=1679127482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zfY1+HIN7aSazDjg7lrarj6F9dc9FwpUglFVZO+Z+Kk=;
 b=Av/1A704jEUx4TJs6lmza4lYyZoIopekiQVw9RqL+G4kn59t9Tv7Zmem
 q5UygWvQ4/USP+JRk5LUPUF5mdEK89MfEgEZQZrPkNS5d93fIE6HvIL6s
 e0TtZ1/nbaqVBdZtsgtuNodurCBnJKnCwq1t0UQ1watCRT9QC0GoX6DXD
 drZlpfeWka/VlogbWEPeeqWBriSzF7Rsr1djbz07EAUNMNZILTzPbJL6Y
 WkF8QKpJsyoX/JX/4RMcpgDdw5VPOmf0YpdhnV7xOEUb1FG9+HydaAPm0
 pRFsLIjBWuRqqW9v1C64ciA3enepGTJ+7Y7juqCcFWfE92t2zQ6Jt9Aas A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="254646866"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="254646866"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 01:18:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="558319017"
Received: from pastorcx-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 01:18:00 -0700
Date: Fri, 18 Mar 2022 10:17:56 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjRANNv09keROx9t@intel.intel>
References: <20220318021046.40348-1-andi.shyti@linux.intel.com>
 <164758234860.31587.1988393489717053112@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <164758234860.31587.1988393489717053112@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_multitile_support?=
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

>   • igt@i915_selftest@mock@requests:
> 
>       □ shard-kbl: PASS -> DMESG-FAIL
> 
>       □ shard-tglb: PASS -> DMESG-FAIL
> 
>       □ shard-apl: PASS -> DMESG-FAIL
> 
>       □ shard-glk: PASS -> DMESG-FAIL
> 
>       □ shard-skl: PASS -> DMESG-FAIL
> 
>       □ shard-snb: PASS -> DMESG-FAIL
> 
>       □ shard-iclb: PASS -> DMESG-FAIL

I don't see how these failures can be related to the series I
sent.

Maybe a false positive?

Andi
