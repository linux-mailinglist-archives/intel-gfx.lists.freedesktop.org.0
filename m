Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE184AD55B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C032210E586;
	Tue,  8 Feb 2022 10:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C6410E4F6;
 Tue,  8 Feb 2022 10:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644315132; x=1675851132;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=liupRBQAh+M4BVzkJoznKH+UcsZfM6j2ArFAqaovjtM=;
 b=Cc8nWOYVD/Ffirn1uhJA+CybjC1GxkxpDrmrNPkRMDCOXL9AkI9UVj+4
 vd7avvL5Fs0lx77BEv9TOq5e+THT+mYwrcy0OO5+R1EpemD3TaCZZt6Vs
 ABnZN6kEx+EsBegU/q1hTXbcwVeH7rtS56KblN5nrJyx2cBMzt31B77Sw
 gfujzdhDEgyvmTLkxbJtMqCTcJQNrAuqyFZtXMAAmgR+e72n93WK2KUcL
 2gYCNer3eYdE0YZNrEwe4x1fTIUskYb63n4+60tMv9qJ/8aMK6oqUzHAL
 /Yeg6Si1CfNznvnxspyduobhWkuAWFsMTKm/XW94q7P/NQIoR0w4iWkVk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="309662248"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="309662248"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:12:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="585143268"
Received: from amcgrat2-mobl1.ger.corp.intel.com (HELO [10.252.10.21])
 ([10.252.10.21])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:12:09 -0800
Message-ID: <b62abf9f-1e2a-b75f-1505-9f37024d2f8d@intel.com>
Date: Tue, 8 Feb 2022 10:12:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Arunpravin <Arunpravin.PaneerSelvam@amd.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20220203133234.3350-1-Arunpravin.PaneerSelvam@amd.com>
 <20220203133234.3350-4-Arunpravin.PaneerSelvam@amd.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220203133234.3350-4-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/selftests: add drm buddy optimistic
 testcase
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
Cc: alexander.deucher@amd.com, tzimmermann@suse.de, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 03/02/2022 13:32, Arunpravin wrote:
> create a mm with one block of each order available, and
> try to allocate them all.
> 
> Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
