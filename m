Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 783664E706E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F9D10EADB;
	Fri, 25 Mar 2022 10:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6051E10EADA;
 Fri, 25 Mar 2022 10:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648202725; x=1679738725;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=eSrlv+dXjmZeQenNCDmfiDzS8gAho2KjRCmgQddr1WE=;
 b=SfjeChAsqggcYKuf75XnEkrX5+eKmBYBnLnRp8/sSTsdwMFsGOfEWW1u
 eUEEG8yPtxR8M0+Gp32xLtzE2VM6GF0A51z/sER3v+2m/hbdvklpg10gJ
 jRjt3GjpeEIG/Zcmozf1Yvz4F3MeIKA3grUz3SBve6j4e7OvM8fcgPLW4
 VZonI7fiKFl/d1i8Znnz3zTZ8Y6gCSxSKKMt0nSh+6HP23oU8sAgXCES+
 BRSU6uGGUeZPO6ba76qlEmaKhzvPCb7i7CoAf2KTVD4XU/AZZ/T4rsGaW
 8I5zKKo8xBynhYibCIAAJGKUHNeeN/6mcj8fXiz6DkG20gI2XLzSJiU1f A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258316960"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258316960"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:05:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561775115"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:05:23 -0700
Message-ID: <06101a66-ed7a-5e1e-e4a2-cfe5155c501d@linux.intel.com>
Date: Fri, 25 Mar 2022 11:05:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220324172143.377104-1-matthew.auld@intel.com>
 <84deb237-3d0b-0c0e-21c8-25df59b9fc71@linux.intel.com>
 <57b94aee-49c9-9847-cf5f-75c5fdfa45be@linux.intel.com>
In-Reply-To: <57b94aee-49c9-9847-cf5f-75c5fdfa45be@linux.intel.com>
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/25/2022 11:03 AM, Das, Nirmoy wrote:
> Reviewed-by: Nirmoy Das <nirmoy.das@amd.com>
Sorry, I meant this r-b for the  2nd patch and for this one Acked-by: 
Nirmoy Das <nirmoy.das@amd.com>
