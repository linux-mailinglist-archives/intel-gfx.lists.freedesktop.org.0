Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1652A4E7072
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F14710EAE7;
	Fri, 25 Mar 2022 10:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF41A10EAE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 10:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648202799; x=1679738799;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=f39xHkSxoWBp35jo6ixiDT8WJ7LrTeIBk93Im8g03Zc=;
 b=dD2xBiKlhrk+BiNel4hp8ICO/LqqXf1V1afJACdU+fPZI0QNElsjMkEB
 R6BL83SvDNhGe8WmaD5GshNrvzaPwjyTnPiW2sTZVVvqI20Z5p20CjOUN
 wufZ3MZs07jmw4Ax+rdKwazF9Z9TrMzrEZdbA7OwiXjk+9auMdsAJ08Wm
 hsA6s9Mj3WBdnysZxHNi2A5nDXjtVMyM8Zd/CMnuLCMJr2SIldUYJPgy7
 6+BCY+oQgyUH+OzqSAA5zpAp78w0Gnp3hVZc2Hy1Wiqa3IbqOGudjfHKM
 CaozB9iireveBZqZ29AZHuOpkdcnJPkEnXYLypX8ko05Uf0yaWYG8oncy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="256167960"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="256167960"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:06:39 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561775458"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:06:38 -0700
Message-ID: <5c33e2f1-1f1c-52c7-542a-dc8dbb9e4a06@linux.intel.com>
Date: Fri, 25 Mar 2022 11:06:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220324172143.377104-1-matthew.auld@intel.com>
 <84deb237-3d0b-0c0e-21c8-25df59b9fc71@linux.intel.com>
 <57b94aee-49c9-9847-cf5f-75c5fdfa45be@linux.intel.com>
 <06101a66-ed7a-5e1e-e4a2-cfe5155c501d@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <06101a66-ed7a-5e1e-e4a2-cfe5155c501d@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: limit where we apply
 TTM_PL_FLAG_CONTIGUOUS
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


On 3/25/2022 11:05 AM, Das, Nirmoy wrote:
>
> On 3/25/2022 11:03 AM, Das, Nirmoy wrote:
>> Reviewed-by: Nirmoy Das <nirmoy.das@amd.com>
> Sorry, I meant this r-b for the  2nd patch and for this one Acked-by: 
> Nirmoy Das <nirmoy.das@amd.com>
hmm old habit, please use : Acked-by: Nirmoy Das <nirmoy.das@intel.com>
