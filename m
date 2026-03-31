Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGGAOmq1y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:52:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8E23691FF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61BA10EA9C;
	Tue, 31 Mar 2026 11:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQqbQKRd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7514C10EAC9;
 Tue, 31 Mar 2026 11:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957926; x=1806493926;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gHOm1jDrnPYI0Up/d6pCBqZ5hqTb3S9tepafOEGPr94=;
 b=LQqbQKRdOHdta/nBykHl4jLyrwaTD+Yk65+2fvylOjVCQy8+lbV+hGIa
 jLLRVOkhAyZS6MYoO1joOEfh8zmz4RE75lCNFmUlWL+Fv2GqwveZkXtHx
 J088V8MoS10ki7RSBUherCIj7iQodmg/rxVj5eSFfczBo0ohJiSJU1EHE
 Pxd3YE//OwMF3y+DENc3KPZCgtp/IOkJrlVGcpYi1DUS8BF1Dqi/InBsW
 EIv2JNS2mumfthTQNqAF6kWWDiOYzrKFuzdZYe2RoXLpaCYyvS2EM24Tg
 klT03vwk2tMQmjbWWvXFm+mJ8byJ1ThQVW/gem+l51YEIU2ibT8y7Zss5 w==;
X-CSE-ConnectionGUID: ishcQr0IQ7ueH002R/mxrA==
X-CSE-MsgGUID: lE7X9YAYTayHiWQOPmdkLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75855258"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75855258"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:52:06 -0700
X-CSE-ConnectionGUID: xlHIjCtaSV+QCDpKYbRMOQ==
X-CSE-MsgGUID: CiHRZscWRL+G3DtNmDXnbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231171194"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:52:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:52:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:52:05 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:52:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y57J13Z07W1Y3XDfdOQpF2mqvM7ZnNUFRqHz89UFWpOwqwaUTzeGnjGjfo8L9mgo+NdO9HbxdiJTc/3QYWOkEQvDi9mGsyaqA1JxUeuukeTrNDGpzjqWMz+yKu8DEvVwotfELHTGszggGCSE89FCWGpjYORNeTt7D7AOw0CpCzCc8QVoJ5YReyuNPerhkaSK02JDz3ucmh4BDpPNJlFMIhYa3Nsv1ZhXlV1TwMw9Xb9rSIt+8p2uf+V+Z55wnwuC+yaYqfESdfmbH0lrXsELkCcHXLHk2MOQ7zeBNQZwxhbRQsBsMfknr8g4DlaDv7aM2noBCMGhG+cNYGtlqpZycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpIe/Oi7LX3ZGYTcsU0cCnIUnuZ725uxZVjru8sFz1g=;
 b=FWSlc5ihLD6GIPkWZ6jt/UCyO3gIFn5jdkUUprDPJWtop2WwDdn2RvKAuKxPn5F50cjad6lOGhiE6ZVy6LrJFNaN67oUXb+eYzoCCIWkl06PzPYf+7iYN/FPtecttdaGHyBTGX7zffI1L3rQ66/PdsCT8i+GGEtX8UE+SnNcQZ8lw8tebtq76c7PEDvlE/cKGcylz+oc1FnICx1U9CWmhYsMcojGg0k43MvOLZV4QuFDLndGlGwrHb9vcmAxYipgUSIPaa2RoaJpRAhZU+T1ZIyz0sHyXPQc8fVwzdC2CcsIqtTErCb3qxMsUlJc58jfgf6Rq5GUKdnIT/EZyhfivA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7031.namprd11.prod.outlook.com (2603:10b6:303:22c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 11:52:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:52:01 +0000
Message-ID: <c1ce75ee-45ac-4263-bbda-e8296ae5eacb@intel.com>
Date: Tue, 31 Mar 2026 17:21:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/19] drm/i915/psr: Write the PR config DPCDs in burst
 mode
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-14-ankit.k.nautiyal@intel.com>
 <acrEiglyKjnRZA0Q@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrEiglyKjnRZA0Q@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7031:EE_
X-MS-Office365-Filtering-Correlation-Id: 751e4c22-22f2-42b8-956f-08de8f1beb7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: a3UD8yM/k5V0pK7SsAYdB0uLic7C/JeKJ/xoKJa0w+Bb113/qK4KlijMZa8R03h7wNKfxc0q1sWL+eM4cYa4+Y2eQSeKMulH8sHvtUw8W6Eck8r8cSoiTosubDchGZvF+ndgkMAMuAVUwkyWHo8uZTVmOXr2svhdUFVlAxxiPF5pBY1ysZweXjEeAJIN3988KRK2gPkR9eudEwiUB+xtXiqwb7Ma5Po2glK+tfPAclM1vS0AlEYEj49XeOYqifY+2WWRill/PjSyey1+I05dyxT4F1X0KLiKPW7DQ9Ho7a90oOyqfz4UmbMIPKC7GFO+MkDRgOwzdtq7dSGk1VmW2IZP9oVG/2aOiGyHPLIQXzPprQ0k0J8VoGIjUoWoWq7FCWAMuYjcXNQpw67oVmvHBAt/Uj8AccgCp2jPCwlrC44UHyh3aQIjP6NhOlSGAmKEWdDbmCDJBhzi6VqkXgWlrFmYMhecg7vYvgqTP2zPOfcUAGaiicG5NqQWus1nTzV0ak5eS8zc2VslfXh/nN1H0c1ZvYv+4fcAaX8QrrQN9Y9GBunko26GFMccrGGQNBQ11ZwWqECo8g3NrVYubMTLPx7QeWQvxXZMYCEOIYDrUfByjOUy/9E3s7iqq9GxQ7zv7TNJXLRWAXLObYAs01LMNM5e1r13JNO4+hiVSwbtHdX5J4Jg+9m4HTn4ts9pDqrzOU+Zm8O8DGyk6MLjCKMUljlRD5EGoYjHrhqkQpBy8Fk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzlSM2ZZM1owa3ZIWlRaWWdqUGJDZnJHUjI1R2ZHYk15NEFjUzFHRVZYRE9Z?=
 =?utf-8?B?cnUxbExnQVVLWXNVcC96aWtlUkhiZjN1ZGd5K0pJdGtCTVBRTEM5dUtuM3hV?=
 =?utf-8?B?VFk1YU1DMXV2OE4yWWNOMkpqbkJEL0w4eG50aG5QK0txdWZXUWQ0MzZtTXRv?=
 =?utf-8?B?WE12TlRuNFVOMUNiejgyT0dXc3lTWXlBUEp4WU1UdU42N0h3MTRtWGRrTFlh?=
 =?utf-8?B?amZEbS95V3VPU1RUdW82UE1CWGl4b2pwcjBXQVNRcXFYcVFOWnoweXN3Zi9H?=
 =?utf-8?B?R2xEUnREMUVreWE1a1F4SGVNSmJubVVhUkNqa2tJazVYdGxKME8xQWExU0o3?=
 =?utf-8?B?WGM3RW5lcDd5SEtyOG1vSmdZbUJydlY4c3c0czV1aDg4Mmc2WUtXR3pHcFdj?=
 =?utf-8?B?WXBzU1ZkRC92ZWxHdXk3a21DM1I0NGIvUG91ajNzN1hwbExtUkdBRTFjYkhL?=
 =?utf-8?B?SUZjZ2ZWTTY4blo1K3pQL1A2T1I1WDRaODlrSk8xQklhSjBDeDFVS0cxYm9K?=
 =?utf-8?B?d0ZsSHY5c2ZDbG40WUpCZTVlZm9sNjdPd2JRUlR1Z2l0bmp5U1JqSnBoRUlo?=
 =?utf-8?B?QlNIYitWa1hOdndZZHNreWprY0RMaEdIMHhhREZXTFFWRWxiWEJoWnEyaUZJ?=
 =?utf-8?B?TFJZa2xqVWlCYXd2emtHaTE5d1RIWHlXN3ZUVFNUU3c0di9YeG1NYUNMK21D?=
 =?utf-8?B?NDdLWlhEaHlOVG1PN1p4cmhrUGc1Q1VMNE5ha0FoUm5oWGNLK0h0R3NPdDMy?=
 =?utf-8?B?L2d0SmluTmR0ZGM5dEMyVHp4U2FFZ1JUbkxrb2RkbFIvbHk1NTRzMGlGOXFX?=
 =?utf-8?B?My9uYjA0ak1RQWYvQXJBWWQvVzRzTk5uNWpiazM1dHh2Ris1alNrSndScElT?=
 =?utf-8?B?eFBLdlcvWUhoNXY3aFhySXlCbEo5OGlDQTE3cytWZG0reDhiY0daNTRhL1lI?=
 =?utf-8?B?REZZaUNHZWthTjNIc2FiblRkUmdNN1A2aHpTRENtckpyalplTXpJaFdWbHBZ?=
 =?utf-8?B?Q2czL3R1aGJabld2Y0JKeCtmdjJIMjJtV004NUFRTW5STkp1a3VIOFBnb3Vl?=
 =?utf-8?B?Q2RPaTBzaUVIUFhCUStzVWxiZEJ2YVYzR1VXb3dTd0J2ZHpGQk5kdUlxL0JC?=
 =?utf-8?B?RnAzbG01RkNJRHg3MStDd2t5VmIxN2ZvclBiN2F6NHpnczZPc21rT0trcDNR?=
 =?utf-8?B?Y2l2aVBHWlN6T3ovczBOZVk5OTFQQWZyQUdRRys0UUYxdDFMSG54Tm9TTWpt?=
 =?utf-8?B?UDZnaThLYXdYSnM0bzRvWlJTZVNoL2dGMFBoNkxzZ2pBYmtkSkw1b1RHWHRk?=
 =?utf-8?B?cnE5dFhHTzRVd0Y1Q290c01JbTdhcjRyT25WeHJGSGdjNVNXYjUvSlU2Qmo3?=
 =?utf-8?B?VjA1Tk1wZTBEMzZkcUhvUkZ3cXlxaE14dXZyOUkzNnFsT3hpOUU5UUV0R255?=
 =?utf-8?B?YXZNMlpqUnRwMVBCS2ZRWitoa3oxRUFQNk5mZ2pOY20xVXF0Y3prUGZQSVdV?=
 =?utf-8?B?SlpUN1RURmkwQ3QxVnl3SWFYNlR6dXJlWjdXRTBzRkEvQWgwVTcvdHZpQVdF?=
 =?utf-8?B?RHkwcHZQZDdaYnFzZzBUenl2dmg4R2U1MUd6YWFhNWxDTUhxODNyWFpwWlc0?=
 =?utf-8?B?ZUFGSzFTWndNK3pSYUcvd1hEREFUeXhiY1VBajBNWWt0aFl4NnlvU2VEMStW?=
 =?utf-8?B?YWw5Nm9KSGYyYlRlWmo3a1JLSjBYb0dEbDRPb2VteDBZT2hHcm9qRGlDUnpo?=
 =?utf-8?B?cnVWZEVuekcrMTFKMlR5dmZhYnhnZm9Rd2VValdqbmdzb3hzZ2d4eDNEZStK?=
 =?utf-8?B?VzFkTnJoR2pMWEREYlcvckwwQ0hDdCtVRFBId0gvUW9KZ0JGTUl6T3hRWEQz?=
 =?utf-8?B?MExHNjd6VStnSWdad2w4U1BaMkorMFVRM1l2MjNsTFNEekJEdFkybVZ4RTlW?=
 =?utf-8?B?Z2k0TURDejBBN1RyOHRIOFpiYnlTQ2V3YlVSMzc2RHJCK2dpYVAxVGhDMERG?=
 =?utf-8?B?WnBGWUo4YlQ2c3VVTmdEcjkyYzFlaUVPZkxvZS85R0xNKy9PM21qMFYwaGhm?=
 =?utf-8?B?K3Zrd1hWZ0NvNm5INVBZSlRjZjU2U3RMMU5DeU9VZHZCQWUzeHRtWjBaVENK?=
 =?utf-8?B?TGFSMVNTTENXbkJqNDgvejZrWTVGVnhaaDZiZngzSEN6NnZoZk8zRVVZanN1?=
 =?utf-8?B?alptMXNvdmZLcm1yTWNLMS91SE1RNWc2eDZ4OTVTbSs0b0JmdnFldll1eXhI?=
 =?utf-8?B?V1gvM0k5NStscytwYmRKdmZUL2J6Qk5rRDdNMWI3bTlVdGoxTEM5dmwzQjNw?=
 =?utf-8?B?ZWl0SWZ2b20ycEs4aVdBRTRCZ3o0NVFHVzJacXVsSDM0UlRKQy9KVmovR2hZ?=
 =?utf-8?Q?+1S6+6Qc/4hxUGs0=3D?=
X-Exchange-RoutingPolicyChecked: nQfqX2Xm/lMaKPkD87i2De7rYniF6fxjXOt2R00+Lpyv13bUaCSD84YE2yc1OdNH6xe5Yt21KrSPiM6RVl5w9vX0uQANnK9qC4HvLroJbRDBXbAEE7BhDzRsuV/2tiswDUy6UywVF+JTSpQyZ3gXR32Qnqdx+dk4W8xVk0a6vexHWRexkhCuBpfmLDxcGUlbVPwlOERKhGVL4PguW9fIDjmR7uISLSutAC9yp3BhXoskS4hLr0UV3ZEGGEEZS7yS0XSFnYyr2u4K2VRDoXyfZcpzR/mZcY12HepxEY0K0rNprZdIXogW1CsIw6aYWxbGe0DvHsWqzZyFc+RwA83lbw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 751e4c22-22f2-42b8-956f-08de8f1beb7a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:52:01.3847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +X9WmKJy/uhkYs/lUyNrMM84eneEBY8AAKM1n0xLz8ucrbLdstCptBzzvrBwdm6EQNmfeszUSzcbflmT5kr6BuwukWnXtSYUwxXd2Als5kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7031
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9E8E23691FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 12:14 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:50AM +0530, Ankit Nautiyal wrote:
>> Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
>> CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
>> reducing AUX transactions.
>>
>> v2: Drop extra conditions, and optimize variables. (Ville)
>>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 29 ++++++++++++++----------
>>   1 file changed, 17 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 2f1b48cd8efd..ca054135ca30 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -782,27 +782,32 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
>>   static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   				      const struct intel_crtc_state *crtc_state)
>>   {
>> -	u8 val = DP_PANEL_REPLAY_ENABLE |
>> -		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
>> -		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
>> -		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>> -		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>> -	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	u8 panel_replay_config[2];
>> +	int ret;
>> +
>> +	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
>> +				 DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
>> +				 DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
>> +				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>> +				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>> +	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
>>   
>>   	if (crtc_state->has_sel_update)
>> -		val |= DP_PANEL_REPLAY_SU_ENABLE;
>> +		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
>>   
>>   	if (crtc_state->enable_psr2_su_region_et)
>> -		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
>> +		panel_replay_config[0] |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
>>   
>>   	if (crtc_state->req_psr2_sdp_prior_scanline)
>> -		panel_replay_config2 |=
>> +		panel_replay_config[1] |=
>>   			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
>>   
>> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
>> +	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG,
>> +				panel_replay_config, sizeof(panel_replay_config));
>>   
>> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
>> -			   panel_replay_config2);
>> +	if (ret != sizeof(panel_replay_config))
>> +		drm_dbg_kms(display->drm, "Failed to write Panel Replay Configs\n");
> Looks like we don't actually check for errors on any of the
> other DPCD accesses here. So I'd probably drop it here as well.


Yeah.. will drop the error message.


Thanks,
Ankit
>
> Either way
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   }
>>   
>>   static void _psr_enable_sink(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
