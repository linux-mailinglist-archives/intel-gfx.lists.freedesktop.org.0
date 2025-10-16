Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD632BE5747
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 22:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED07A10E358;
	Thu, 16 Oct 2025 20:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gw0hJLxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A9210E353;
 Thu, 16 Oct 2025 20:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760647845; x=1792183845;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WMySgPDg0ZFTeTh470zTnhm/1iFma/DFMXVcvmS3tes=;
 b=Gw0hJLxpmbDcY3wRUYceiClcfm/v+oFLsRt78Dp3pOHoZz4vQCtDc1WP
 o51GEg2scri2Ih2s7f65yj0pUWhJLQdKXi8/9yLwlj8DwavbIxZ/aAChr
 kvmUk8++qUtzUU0jbIHMY6w8bWctTYXrAviZedfXOCh9TXd+Hi0ct2XZB
 +UPOlcK59mT9bMbqWJqmGXuVpVY0Ly7mGJea+aJ0c/xdPqHKvgJX8P3/C
 PRGApun8KzThzIdQsN/Q/a8ipCbpceiGaq1d+QbSpOBP08020ZzDPHDBQ
 0UEsrMfsUJxqvpkw14z1zYMJJqjetOsdWOGMrlF/TyPVOGCKCAmacy+bR w==;
X-CSE-ConnectionGUID: A8n+kDxsQKSnPCB6Xv9UZw==
X-CSE-MsgGUID: TjwBLCmkR16VKZm4KrYqsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62064704"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62064704"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:50:45 -0700
X-CSE-ConnectionGUID: JaUaI7iTQISGfaoaFPPn8g==
X-CSE-MsgGUID: BUEff79NTxeGewjba+rmhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182242886"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:50:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:50:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 13:50:44 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mbWyoMs24mHwKk5ukt1uL4KC9VnRph8TufILq3hE+X1+ISoWiRMfeTOUhcgJfKperrWtXYiltEc8Zivtp9laJkCRvevt4aoysx76xwXL7o0DBlTePXJOUtWdrbwc/CXUSarti4uEOKf8bF0nGLplUNwXvNJYDred2PgrKc6EjsxXLrFY7tw6lye0kmvQ9+ZDlBGHFb66RunuZKhgfKWPg3maZv/V03YOFCxU3i22GfTKIJACe/d+tEFySHve7I8bNCZmtpv85f/WWg88zxvL2UPFxwqI8a0oXH/WidLNzMEoF85hwAyxKX43RStGvX/+pbbrrVjwecr16LsT0ti4DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXf/kiMFRrlrYqJKx22oYwtqFDWyYeCb75FYUbew+yI=;
 b=KyDerpK2j/36bFgDvZpackL5Sta2x88MOs4ZZ7Xrel1Y/qMSTsZSmTx/MmTnWFqS4jAjaawANXuRxjtXKB1cn+5LOg8w7CqvqqSNwSY1/5oZVr32IUFtk3/BQOe+diOTazCHjvh5yNymJfv7b1IsVJOyWXjpSNEjU1oT4MHM1sUDOEpCoPZ/xnBVer691oemS5ADygRgrwsoGH+UYyw97zGtfNAjwcqSIVZuhoaR52J2tyQyGYAPM3z8AJZOhNvZjnp1PynpWPDB5iQMJzAy6DJO3RcqXs/ZnfsMhOEXnaD5ZraGsOg7T9M5Na7PzdOO/mkAUOqvKbQfj6iT8jNs8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by DS0PR11MB8763.namprd11.prod.outlook.com
 (2603:10b6:8:1bb::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Thu, 16 Oct
 2025 20:50:41 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 20:50:40 +0000
Date: Thu, 16 Oct 2025 13:50:37 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 22/32] drm/i915/xe3p_lpd: Don't allow odd ypan or ysize
 with semiplanar format
Message-ID: <aPFanYXzdbVQbdcT@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-22-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-22-d2d1e26520aa@intel.com>
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|DS0PR11MB8763:EE_
X-MS-Office365-Filtering-Correlation-Id: 2793a594-2806-4935-af4c-08de0cf5aa9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWRzYUpQY1Z2LzN2QXVyTEM1QXRvVE9lMkVUR2xsME9CYU1qZHJFYUt0WXFW?=
 =?utf-8?B?ZEdNa1dVRkJPY3B3ZnRJRXpXdFV6ZkF4SHM0MTVPZTJ2MUd6cDdRa1RjODJY?=
 =?utf-8?B?WW0ySWtKblZhTUJjdzdiRGR5Si9MbTB6NXE2WFZhVnBaYkVsZjhjUmJNKzdo?=
 =?utf-8?B?b0lyTXZMbllDNFl2aFdXVnd5MlQyRE14bTFYMk1zN1M3eW1QUVgvOUVBYWY2?=
 =?utf-8?B?THRsZkNWckM1RlZ5RHNleUxYbG1jb3p2TnNBYlRRSlJ4WTJtR3lITVAyWThD?=
 =?utf-8?B?VnIvaDFRcTFvZVlEby80aTlac1EwM2JGOUgzU2JncWlGZGNwbGJsMWNCWUpv?=
 =?utf-8?B?dW1ueXd4UmhOUnpDQlNXZHB1LzlheWFZclYxU2k2WXRCaHAwb0tRekRmOWxU?=
 =?utf-8?B?ek5qNmZQeEo4cHFuZ2RnZ3kweURqckg2ZW90QUIzWjRnRmYzUVdEZGw3TVNU?=
 =?utf-8?B?MmlOK2tXQjJkK0FTMGNXTUlqUlhTTEQyVXVkTTFDSld6ekRzelVGOUdMWVBX?=
 =?utf-8?B?cWk0YXVTby9vZlY1dVI2clovd3pianhiV2F4L3JvMXVJR2hCZ2NrU0xGT01L?=
 =?utf-8?B?dFRBSUpoeWtnYU1CRjIxcm1Kc01nSC9mVW9jcmVLc3QzL3NCMVlGQTEwVzhk?=
 =?utf-8?B?N3BINEU5bUZ1UWcza1RmbUs2YzE5T2Y1OEdmSWRWa3pwWGcwZWROQy80Si9q?=
 =?utf-8?B?R1UyNkVwcDRpSFhBQTBLSmJGZmxsYXdDeXllN28xNjY1TVQ3VG9MMWZkZ1Jj?=
 =?utf-8?B?QjdrekxPVmM0VExGdG45SkQ0bTBxbk5qaTRGN2Q4U2hBQVZZVUJWSTZTaTR0?=
 =?utf-8?B?Z1lOcDNVV25NMVE1b09zb1A4V21wcGoxVjNZY21uSU1kclZrbXk5Y01FOGNC?=
 =?utf-8?B?czh0TDV6TmNpU0xRUEUzRURWdzFJcktWVkdqSUVzdW1MYVFMRzlrS0I2UThW?=
 =?utf-8?B?dk9xekgyRnM0dk54WVY3M25ka1Jqb0s5aWRUZ3JPTGxtRHdOSE1GL2dhSThH?=
 =?utf-8?B?V2RrWlRsVmhaRjNCay9vSllSakxTbVhzMXNzMGZVQVpGY2FSSDhud2tXS0lk?=
 =?utf-8?B?WFdNUFk4OU84OU03OXZMd3hYTFNKQ0pBWjdnei92VFVEZUZpYks3d3pjd1Jk?=
 =?utf-8?B?Q0ZjV1pwRE9GdkVzTFFIMzJhb0hHeFFlbWsyWDg3enM4WGN3NHhIUlBXT3FX?=
 =?utf-8?B?TXMxREpEMWFuQWpXYkFzbVVEYnVoaDhRK1ZKeW9OSURuZUZ1elA1N0VXbzEr?=
 =?utf-8?B?ZkNISjYxdGZIN2tXazFjdFlFQ1NwZFlBWDhMdjRNS1ZCK0JzUy9sTVVmQ0tU?=
 =?utf-8?B?Ni9sV0ZlRTJBN1VDUFJLcW1vaG5FM0psQ0VZY1dDalFZcXZ3UVNlNUtRVXM2?=
 =?utf-8?B?d3lsRFB0ajZKdU1tTlo0M2lKdFo2ZU9EbEwvUmIzVk9LcEM2aTluVHEzL0hI?=
 =?utf-8?B?N09RVTNRRWVHRHBzYzFvTm92ejNCeXMybU8wSXFOeUVIdkdqUGFzSWhNWVFY?=
 =?utf-8?B?cEI2SDNIMXVyNGtpYnc0c08rMm5PSXpIUTJ1bm9BVmpZWkxWcyt2a0ZOOGVS?=
 =?utf-8?B?R0dwYjN4S1lHZTg1eXFSb2FnM25UWEtMbUQ0ZkhQQWlYcmNEMzlPTDBHYU9x?=
 =?utf-8?B?Z1pFUDM5WTFybExUMDlpQ0MreHo4WFhjQW45TUs4cDM3eEJVNFZ1blJWK3JH?=
 =?utf-8?B?UEw0dVNNRk5IQVhyNVJhOGpOSks1UTZzMy96WlZCVnkrd0RTRE9RZHgxL2xT?=
 =?utf-8?B?YjFkTEhzSlRrdW9xK3JRcGJ5ekdTbVJPTTBNWW03cTR6dXFzcnRQNURGZm1q?=
 =?utf-8?B?azRybGtic2J5ZFRxWCtKcWRoN1Bia3E5S1lYQjNycmh4R2lJWlRJQzJGbWhr?=
 =?utf-8?B?bDE4V3h3MStWTGdDQWo1Wlh5RWRQbFYwUnlPRVBvWGdLb0Y5TkFFMldsa2lu?=
 =?utf-8?Q?6E/Sx4FBJlI0ofdtJJ7fLNnWk/TpI+7F?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU16d3Y3eFEyZFNTSittZVA1dWtodkVGVVVuRkJjUVhoTUhyK1BqVEsxU3hI?=
 =?utf-8?B?VThFTzYyeXdmNEhBdXJhV1V4MzA3Uzl1dExxVEhsdUpuRURnSWZYVHFuUUM0?=
 =?utf-8?B?dG9KdGhBY1pmTXNDTXhrVzgzNzJ1UVF1SkdxQkVJWG9pUHFhZmNIM1JVSld6?=
 =?utf-8?B?dSt6cHNoRzB5QjdCUit5U1RnZ0ozZk5YcXRuMzNITVJGQ3ZiM3BsYWV6T3lZ?=
 =?utf-8?B?N0EvR093MjlOakhpZlJQWVlvY2gzK0VpL0RLTStQR1lTWUFnWEhoQVFCd1di?=
 =?utf-8?B?bEJSNU96dGVtcnlhb1phd1AvWXpKTUhzS0UyaDNxRkNyVlpzcnk3NUtheE9u?=
 =?utf-8?B?VlF3YmJHUFNVY0VNY0JnNkFLM3ZQS3h4TTBsV2I2WDd6M0xWZ1JaeTI3MCtj?=
 =?utf-8?B?UGMyQUw0VFF6Ynh5a3BTS3d5SGgyVDhvVU1zTTZSckpkVzNYdVY1aGhEaHRw?=
 =?utf-8?B?bWVzdlFOQXludUp6R1FSTTZwSkd6cmI2d3paandyaUIxdFpyUW9SUVpQbTVz?=
 =?utf-8?B?Wmd3bUJrdkUxa25ZOFU3dHlBSjczbTE4VDduSUhRbjRnWlRZWFVtQVkzMERo?=
 =?utf-8?B?dXJYTGszQmM2NXY2K2l0YjkySGhTYThuOXNsWlljTzlZMkhBUGcwUFJXTlE2?=
 =?utf-8?B?KzJIcnFDSjdlVmJRWnlOVlErS2cyL0tNUjNxbW5GWCtsTmljZ3BWa2dpY0xa?=
 =?utf-8?B?d0N4M1kzRUNhdFNsaU1ITWxzOEdjcjIzdFJYKzROTXBxL0ZQS0M1dWNKSWdU?=
 =?utf-8?B?RERpdzZTQ3RjVFVoVnBRd2JBb0hNNURORm51alBnUFJBN0F4a01wWjBmUStt?=
 =?utf-8?B?Wmhvd045ckNOUGpzZWM3NjNiQnhUNDAvVXJ6dTUxVVBGWFhKbjVlRWxaUHlw?=
 =?utf-8?B?Y1pxY0xpVkpXSURzbnc0dkZxazEvS0RuVGdsSlM5eHpGR3U2YzIwK3Vna2pM?=
 =?utf-8?B?alJJUUd4c3hiUUIwT0VTc0doYk50bnROZ2poVStNOVY4Z1FKUE15NE02Um1C?=
 =?utf-8?B?MjV4cmJJVGlyKzBhcElRZXU5L3FDZzF1cUptQVEvZjRwa2ZvczYwU29QeUV4?=
 =?utf-8?B?LzAzdkJpUUdSNGZXQW1QWXphSlNiU2k2ZGo3aG9VRDFVWnVLanpHQjBOem9B?=
 =?utf-8?B?Ty9BbEFFSTZ4MW5NUnZxMkozWnZhQ1lrWDFXaEd1cVNzRnhNOENHS01haTdP?=
 =?utf-8?B?UmhpNEJzZyt2NDRwS1lGUzRaOEJaSytDV0RGdFd2WXRYTiswUngrMm40aWhC?=
 =?utf-8?B?Q1FuUlZraTNVUVZLYTRMWmM3cFA5ZjEyYTZJcll4L1pXbnY3amdxdldIWE1t?=
 =?utf-8?B?YmxCUTVmNFF6czZ4SDluWEV6cUJzeHdyYVV3UlVscjFlbVo5Y1RQN0JLanZZ?=
 =?utf-8?B?TjdJdEIzMmdqaFVQNVF1T1JmTG5XdmZWOU9rZlVXeS96SjFQejgrZlkwNlA5?=
 =?utf-8?B?RmJHbzUyeTA3TE1EUmo1YnZma0dYaS9yVFZWN3djd3RLbXdCSUNlSGNCYXQx?=
 =?utf-8?B?ZEJ5Vnp3L2NvZUpVdGJiSTg3aHZZbG9xa0xVODVFdFg2VWwvUnBZQnZjcDZu?=
 =?utf-8?B?S2NpamxvSDFKeGpoZEVNbGRFVjBhNVV3bjRBY1UxV1FyakVWUzNUblFxSHNo?=
 =?utf-8?B?MERmSXhleEkvUnpXSUVOZThPK2JBVUVkekphOENTN2FRQUhvV0s4a2oyRk1S?=
 =?utf-8?B?aWYrNjgybUM3Y3RlUWhid3RWbDVXSkZLZzI5LzVLVTgxSGZLeFZRaC9QY0lJ?=
 =?utf-8?B?c0lXYW5FcHhpT3ZXcGpkMy9rK3RRZXhxNjJJMFN2dDlBdXZObnZYeWhpU2RV?=
 =?utf-8?B?VHBwTWJSSlNDRlF4K3BkSjJYb0RJc08wWHluZjNvVVhVYzZTSzBXVHdTSHdS?=
 =?utf-8?B?OW9lUGxrQ0orZ2plek9ER3R6amhQbkFWVkxVNTRKRkZHYTdTWnRLZTBFdjhj?=
 =?utf-8?B?MUtFbXhtRTN6d0pWbW41dENKWjM1K3JhaGQxVDhGWUg1UUcvUmQxY0cxaGN5?=
 =?utf-8?B?R2dNQ2Z5QXhyc0lKMWpWekFtcjA5RGtBWlg3amtoeDkrQkFjWXJNRGZhMUdN?=
 =?utf-8?B?bnJmRVYvb0MyY3NnRm5UVmN4cFE3c3lIc29NZnpBWUF3ajlwYW1DbjVNZkxy?=
 =?utf-8?B?V1EwZUhrSUdJQmI4cllLdXNWcUx5MUNPL3M4TGFXcFZRcFNJck13WUlpbWk3?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2793a594-2806-4935-af4c-08de0cf5aa9e
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 20:50:40.4465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g/A1BlbP/l8kKWXUu2G3CpkHgDCrqwUddNNZ/0lnp5HqLOFUdAp63QGOXTyYYdMkC8JmfMUnrzFBQpZ900zEXNwsnwIKHZA1gA82YIvpVR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8763
X-OriginatorOrg: intel.com
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

On Wed, Oct 15, 2025 at 12:15:22AM -0300, Gustavo Sousa wrote:
> From: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>
> 
> Disable support for odd panning and size in y direction when running on
> display version 35 and using semiplanar formats.
> 
> Bspec: 68903
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 074de9275951..8de4e15fae6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1050,6 +1050,9 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
>  		     DISPLAY_VERx100(display) == 3002) &&
>  		     src_x % 2 != 0)
>  			hsub = 2;
> +
> +		if (DISPLAY_VER(display) == 35)
> +			vsub = 2;
>  	} else {
>  		hsub = fb->format->hsub;
>  		vsub = fb->format->vsub;
> 
> -- 
> 2.51.0
> 
