Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKVpIlwW8mljnwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 16:31:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253FE495CA6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 16:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A2A10E197;
	Wed, 29 Apr 2026 14:31:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcD/zcet";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732D710E197;
 Wed, 29 Apr 2026 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777473109; x=1809009109;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fLNTGvrfJfnDHhY1wVJe7goMeEVaADoz6JfdDDp9/cw=;
 b=kcD/zcet8A0iFGqcWnfDA5tZfEuqkkLUvY8GOtZWlS2rOFoHr8EMDJpF
 9+WlxpkAVvh0NfzHi39lT19r90auCkc0b2FHXgYFI6x6VfdsRsbsJDt8n
 5Bt5YgesxuIo8gAXVJEYelkYgjMRGfh3bTU8G6vt3/K7Kb5sZcI8DIZGQ
 Z7So/SIc0cLsfhUewGRt2bGjDU59MoI+pCyJE/IfWMaWYoiwv87Vk28nZ
 o3iWvfGrCEB57oYNOl+Fxzsq9DW27zG0LlSline1Xx2GbQORyjVPgkyT9
 lUhiKkAhImA3wzim4DsGaLZu2Pp/ViepKxF1/jPCNHlOCgyIcjgL+NqB9 g==;
X-CSE-ConnectionGUID: 2uRXseQIROi2gbUpR2eaPw==
X-CSE-MsgGUID: UvuY+fcCTyS2lUA5wj3GhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82266479"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="82266479"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 07:31:48 -0700
X-CSE-ConnectionGUID: 9sAx22RJSGa86nADvY9Ozw==
X-CSE-MsgGUID: XYXwTkowSj23JkO/+zEiZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="272421487"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 07:31:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 07:31:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 07:31:47 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 07:31:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SyDSLoHph4qTf93/Tx9i6/6k8MuAafk4TcV+rJa9Hl9264yo+xBg52+x8iaF8ZcaYiBQ1hasFKwHLdeJJVLJTVBCNG/LLi8Y9kS/pfT2Pca+S9UqD6gILtZw8uau917eb+akCOJtkDOQDfNX6/iv3VzwtgEb+AW/IZmhnYT/QC7Gnx9sEiHtoN11CL7oJbwI2jmcuq2QGJ7cqIxmS7JE97TcljU/UrSWQBZL95MfjBmkTpT7U+x/t7P9aMvIwUtsxVejqb0yIbBIPk0dtnKnCkNWq2x3QgLpntPx0qA0f0gIrwH2IvLVjs+gnCjGAutKVa5avKRUvTqHtXNxHWcxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sQ6t8uv1e3pzqMMbSGKhWTK6Il6QrFZnFnB09cb3Yg4=;
 b=c4jwvUpQ/shNtK2APNJX3t90WRefFBtnyTsH1dvaISMs4+hOl3nhn05WuQbw6cwGWbVrdkul58T+QzvAxvuT2jybRJnAZ38QIOe/V9rUYMK7c46WaSCqJKzuVanUcPhFfb03vYB13FeWM9UNedkQVNeLYPgSXiaStS2rXDiFV3PpArY6WikFta+AyZdQrAJeZXCuH6f1xdJGFcPjbGvwyVDWuaWatQZd86QvRsHIDrC/XpjsXmbg2rQNWebOsXYVr6Ui/q6hzO0jojFCZd49RDS+nC91Aa92EMcwMJ1GEfU9Vp36LmOSlgDnD7Pki8fvSY2pQKMQj4cywqs6K5gNow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7097.namprd11.prod.outlook.com (2603:10b6:510:20c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 14:31:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 14:31:39 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Use DMC wakelock instead of DC state
 for VBI
In-Reply-To: <87se8dan0e.fsf@intel.com>
References: <20260429110023.611664-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260429110023.611664-3-dibin.moolakadan.subrahmanian@intel.com>
 <87se8dan0e.fsf@intel.com>
Date: Wed, 29 Apr 2026 11:31:33 -0300
Message-ID: <87pl3haldm.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0145.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7097:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ed2bf06-72ea-4b44-2552-08dea5fc0614
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: yQJmGI7qqkQPFvDuGrkV78/FPWbHoxMBHg9r476TlTcVlYxxLHSitR0MaKQcHEGx3hwBma7qSH2HusbKdDDh1ewi7XD1eqtC3KKjZ8UoKstDQ97RD2gX/77CDID6WM62LHzLde6Bv3p38z5s8mxJWo7/dxSgo6mSbqoxhd/hJzA9ZVrTgIm62HwgtsA7pSdGIPUDs6mUZ6TJam2Tydvu8SxintrdIWFIvtyMWb0VJ2PFCYGusX/z/qvxUPBXEcyuP8G/UxBh5en8dIhOWSecJIssN8UxAqxtWE3u1Ju1E1/l1S5CARFnH7nFORogZOann5D1g1YMK+rHmvABJqJ7dv2+2qqkFYY8r9VjH37sGF3NcgPP3WMpP67pmUNHPivmils1q9OPpAi3PlVZCamQaiD/uCKQYqYnCUa1IVnHE01WCnKyZhyupgC5ahebDqBJ+pq04gVj14iuvzSix5sY/5X260a5AOm37LR9fkbSuCPLqSmGrSgtpiE5Xpf1nIgWwTYOgQWlWjnwvTrNXEGI9IiadpZI8BLIDjiAtI7h0AHx1IZMzgChcslv6wRmXAPlBysvG9OYLgotblkPvbAdi/RHgTbnXK5EFB5+FXDuzTa0HCPrGhv2N1k5Vw2jMPCnMbWLBuFL1dlVYmdBO1n2tvt10ccaNl0l0pr/cZB/6Qcv/rH0ymvbnYm7Z07OBPSD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eve3O6WNPsk+FVvNLUFgAn/1XLL2x7CdWKhgySUtvqlHdLi6EFUz6FFBW6wh?=
 =?us-ascii?Q?NgL6BFpMYNeySVOQz3SiI0CIYXrMrwe79i8BMOKC1CNESNVygEEedz6a77tI?=
 =?us-ascii?Q?rbQ0YR1Ryn45a9PisdbkmGX+CLEnxlDRfnJZ4hKvtXu7EoIBcmZ857dwmFtQ?=
 =?us-ascii?Q?VA7wFP1UAWw6WwNSIr27chm97RcROXzV9ZdxNk4+k5NlIO6PhF2fi8Euz7xM?=
 =?us-ascii?Q?mc7wNoWvjWRGcfKFh2N0MaepHxHYF1ZsUAgZLjdOA1evWFzRxW7hDvB2M1OO?=
 =?us-ascii?Q?XKRKojoDK6szxOgS5LaD6oRYodERF/7JA09DJpGdnb3OlVoQDLq+DEK6jpx7?=
 =?us-ascii?Q?jqDqbFzuAQxnMSrSbWTf2Ly4a0EXzxJ3mx6CBUBT0+TzVs4fD5+7E3yUc9VL?=
 =?us-ascii?Q?o6s2Ma2u7sDu582ouI7ujHzPR455Gz6mhNxwvTV6Tf1You0CZ8FqbJfCMmdu?=
 =?us-ascii?Q?Fqzbg0bB7X0eS4O7neStZlP1/WeawVIsiih0DWVWJVJZFZOBRwKF8HQve48Y?=
 =?us-ascii?Q?vkgN0p7lgED4+LooYE+5FOtYRydfaJrWYGIta3w/iUmpIQMguPsBZ8IzK/EM?=
 =?us-ascii?Q?UIEhsTadkUrugJQFIGUcjPYSndSK9LnGF+n/etrsFbv7+M8PnjiuZCbd66bX?=
 =?us-ascii?Q?JoqC5bmkLlNNClPwy6vDUxgOdgxdAqopT2al/KGzXz5lPpWnqVdPTYWOqp+0?=
 =?us-ascii?Q?ygZVyuWLBILX45Amseiaw/tHTOq8OmrSHMGyv4WZMl4PySyKU2dUJ1/o425Y?=
 =?us-ascii?Q?oZMrngqhJWnVmimqgv8/eMRlGBxDblC/GB62JotFxaeKjY5KiA3p/QmOByXf?=
 =?us-ascii?Q?O/gZmkxZfMcGS6SOSSu9VKaf+nwa/e1LpOCQZmvdJePNha0yMaZud+O2570q?=
 =?us-ascii?Q?DFN04/craBQJ2pFRhDe7+7HXMZIzZ0JCFcfcqtGbtRlbknxAYpNhXBnqETtb?=
 =?us-ascii?Q?BztWCjkywMIBQKK0wz1Y82JtYI3NzyGyZ9li406TYnbUwjCoJ2Z7p/xOXAhh?=
 =?us-ascii?Q?3X+7u73uCq4cUXpSziZRkMOhyKhDcM6R7ZyedkmigrA+IPWPBW5qI9Wg7Kdb?=
 =?us-ascii?Q?ClrNfN7+JQBpOWEToLTnGyobgmit6CHjkviEQmdzcu17pLVRneaPc5RxWz1s?=
 =?us-ascii?Q?GbUwL51DFUAeM39SmZUwCZIprgTrnKe+9WY8K3wFSSJw4tgjmndqFhteebQ9?=
 =?us-ascii?Q?03VC2/n9k4pPzARMvF1XGtXqaRIEICGwO+Pjo/7GyyqRKiFDhgFFiNQSRIfy?=
 =?us-ascii?Q?PRdFaf3tEjbU44DRTSe81+3AwewNTTrhJDZJV3pClsifWme2XWKP3AZQAoFf?=
 =?us-ascii?Q?bDt/Bu4vCzKOx/DI3buAPZaXVHc1n39m4/8Ewq0T8oBCc+9Dpg97bRd+ulEj?=
 =?us-ascii?Q?+8kilPE92Mnd7cdjr0JIAE2ra+n8kePSoZNQ9bklp4rPtlcYW9F5GrOBuIWF?=
 =?us-ascii?Q?L4JfUCRDFUXivxi/1CO94nfD82H4q1uLcMNZhDm/+DcSK5xJFwfJYYjvmahq?=
 =?us-ascii?Q?ZmwZxRjehcvHrSfk1e7L0VtmtOVS2bbetltqADFKbAWj0tiId/8JPxmThHKh?=
 =?us-ascii?Q?y0sgVoK6P2uzUuZoSRf2NBhWVY5ojuZrCn0us+5yd+xtP5c2IYT6Rq5pVjoW?=
 =?us-ascii?Q?CH7BpbD0MpNUzVtk5rFUctcZLWdX/XVhGrweeWZa8HWMXDyxElrYyYFCaJI2?=
 =?us-ascii?Q?zpPKfW2GGFYbSN/3iS0qWKRPfZHTLA5h8bQYUAWZZxo8/Qs6oPtIw4dR3Ys5?=
 =?us-ascii?Q?sTaSow/CgA=3D=3D?=
X-Exchange-RoutingPolicyChecked: OfCyyHNOJpf4cL8KqhUe/Osb98G6lGCd7I2IBJHJ8MsztL5brmzicRTyNy6vbVs3mOU5XS1o5FGE7K9offOBfsytlmChoh/YELtPALgmaq8va4Irwn/1fqRsI5h21wLsYxc5toUSO3RH5bMPei7CbAjmZ/X3D6OzAu4qXm6+NZoB/mlGbpm2GMAYCBSYGAX7QMR8M6YlHCkDi7VKU35eY815+jM+MqVqAziQvqCIm5ikvVlf6ZEdQz0gMfEMBOaa7YfkZwQSeVZpAl65dJ9DjCWjSeKwBUNb2Tmv+Yff2qe9zVaTiBC4/cGsi3bI47J807X7JohfECe5VTK375W91Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed2bf06-72ea-4b44-2552-08dea5fc0614
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 14:31:38.9712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Y4Tl+YTf0iQ1JQ9aK94Z1w0lrEOl+Ircakwcvfg0F0BXFyMKtUTjxcQHxYSetjiamUG3D7ZMwnbQ3MmPx8IOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7097
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
X-Rspamd-Queue-Id: 253FE495CA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> writes:
>
>> From display version 30+, use the DMC wakelock mechanism for
>> preventing DC entry. Older platforms continue to use
>> set_target_dc_state() to disable DC entry during active vblank.
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
>> Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
>>  1 file changed, 16 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 9acd47392192..d01b4013f33f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>  		mutex_unlock(&intel_dp->psr.lock);
>>  		break;
>>  	}
>> -
>> -	/*
>> -	 * NOTE: intel_display_power_set_target_dc_state is used
>> -	 * only by PSR * code for DC3CO handling. DC3CO target
>> -	 * state is currently disabled in * PSR code. If DC3CO
>> -	 * is taken into use we need take that into account here
>> -	 * as well.
>> -	 */
>> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> -						DC_STATE_EN_UPTO_DC6);
>> +	if (DISPLAY_VER(display) < 30) {
>
> Drive-by comment:
>
> I think we should avoid using open-coded version check for testing
> features.  It is usually better to use the HAS_SOME_FEATURE() macros
> that we expose in intel_display_device.h.
>
> In this case though, it is better to use to expose and use
> __intel_dmc_wl_supported (dropping the "__") instead of doing a display
> version check here, since that is what will actually tell whether the
> driver is using the wakelock or not.
>
> I even think we can even drop the HAS_DMC_WAKELOCK, since it is not used
> outside of intel_dmc_wl.c.

For this last part:
https://lore.kernel.org/all/20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com

--
Gustavo Sousa

>
> --
> Gustavo Sousa
>
>> +		/*
>> +		 * NOTE: intel_display_power_set_target_dc_state is used
>> +		 * only by PSR code for DC3CO handling. DC3CO target
>> +		 * state is currently disabled in PSR code. If DC3CO
>> +		 * is taken into use we need take that into account here
>> +		 * as well.
>> +		 */
>> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> +							DC_STATE_EN_UPTO_DC6);
>> +	} else {
>> +		if (enable)
>> +			intel_dmc_wl_get_noreg(display);
>> +		else
>> +			intel_dmc_wl_put_noreg(display);
>> +	}
>>  }
>>  
>>  static void
>> -- 
>> 2.43.0
