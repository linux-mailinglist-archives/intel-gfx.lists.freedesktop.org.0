Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF2IOP87qGl6rQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:04:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4941E200EEA
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A424510E9F0;
	Wed,  4 Mar 2026 14:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nbvEPaxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982B610E0FA;
 Wed,  4 Mar 2026 14:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772633084; x=1804169084;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NdqVVMphLtUffYLBFk8oHgzCICGnb/Afjf5RnzH6ncI=;
 b=nbvEPaxYjkDZ+zMgWvIiMNo8n3G3NwjGXct+6M8hGjFfItNDGo0dM16u
 ouU/SwsVm6Pz2JL89FHNXC/iRq0LCOy0z3Z7mCZt22ka21MLMVoVjsV7L
 qHPN4Bo42OzYHWIaFFUi5g+n/RHcV+GiCPHi/+HlWe65BlMYTSTJb9/NZ
 fRJhj7SqefTh4estCAtNdajKKy3rEQviHEHXbFcyK//wfFvfQwYYXJg7/
 cyyMnG9BYdSMfxbK8+SLYtgkGaGeZETtHEv4ou6kcWUJZXQBCjHOm3eve
 MrlQ+DWqGDqafxO7I4cpgQQ+a7oVOKRWcfUwYu7I5jTuvUtNN94/fw99P A==;
X-CSE-ConnectionGUID: PjeQsCn8Rp+QFJVOb7oz2A==
X-CSE-MsgGUID: 2bnD0tpGS3yWQQVeVckaMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73657751"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="73657751"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:04:43 -0800
X-CSE-ConnectionGUID: Vk3gZLPtRx+xB+OyFwDJ+w==
X-CSE-MsgGUID: 86qhY981R8uzTdcnww8BYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="216658774"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:04:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 06:04:41 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 06:04:41 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 06:04:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=leVvJjS5C2DgJFxlvtV58udx0GVi+6xZZQk1DNEoMyWeZmPUB9mJrxx8O0BQ4Q2UEBNPWBeROM08ubTz3AX0lAuVgm4S1yaVk05+EfHI9H2UbPsTSDBUdV3wVs3Gj3nDwriZhmgjNdST3o8Noa1sw+tcByJy2Nz/8moCvth0XUj7Y1Z8m/nexaKmM9x33JU9jcxyfnhNw9y6EPrXaWHtOq5owmSyUq/62omyDlJ2LBLrD9ZKaBqwqHG3UiiPjKkKWlrjjaedrl7eQW7hyutO1/0EEo4K0HQtnb3JorzaZmHIE3RSTQJ/tZKnGpAOh3hQ0iCtJfsu1/xSjbZy9LUuqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OWR0H2Uo61iTy+lEGADKF8AmRPzDBB3z9ODW5afu6NU=;
 b=hl9NAGVbBGI2v4RvaCuzW4QMKr23ntvrIZXmkN+EAxBgs3545x/ggFFiJS30CA/G5/ZgHkrx5Ig8Be4QnDZZ9XKB6vPEGqSWBBdeMDEIrzFun8sT9Zt7EouN/tBwKehLr1uR0yI0bPl5YVWp1tpOBqFP270/hexFSfF0Rqb3a/GTcI+Qj1nZfKgBPxpg4Ii/VlNXVaNkq+iT+c/+wCHLBti2XVLjJbTyY3vp7JmimOeT4uMT9W3uLKiEkcozx9jlBbZionEthZZab4ppookjKxpjk6aCqO+bBytKG3vr0ZY/Ii35dnidwv0DD3ZkaUL4pJ5jwvOQMaOMuzsI+Sc6og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8572.namprd11.prod.outlook.com (2603:10b6:510:30a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 14:04:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Wed, 4 Mar 2026
 14:04:37 +0000
Date: Wed, 4 Mar 2026 16:04:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling
 to use explicit PLL state
Message-ID: <aag77_SX3ItNoSdx@ideak-desk.lan>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-5-mika.kahola@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260304131423.1017821-5-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0029.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:f9::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8572:EE_
X-MS-Office365-Filtering-Correlation-Id: f6536034-430f-4ac0-302b-08de79f6f8b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: Qy6MA2KVAi7k7fR74v4I2vRzhmfY+uCIGlCQePzaFi4pmjerylbdwouk4O0drr9u8Vo8HwvDoPOaWwOn/bj3a0rCf+6qNMYomGlrbiWCEZEP1HmZ78qXNHjGfG84eslTMFshr2j0FJ0p2hFyEhYJn+0+/NuMGh29PDrul3OD2+ZPKkKiqXPpXbswfglsKVcS+vxEprGY8GqEFYi1LZsmtHTLAkyotfD4akNqEDLMLRYkkVtNSK+MpKyamMeilFwgl4KIIu8URs0NS3OX1u6azQc49m2XwxG8GgE4Z6sHSQJM/NPsCTgFR76lo910w9OUU4nimRnZSRSw7BENxzJGJ/bNV1VopORYiTxAlmiuq0VyMqk+SwyVudXdYlbor8saXKvVkj+tvxF8ayNCHwwz3fU1ObkGZDzu5NHbiIOna4ArKkFdZeptV+iz8+Ovyp9IhCvF9JM2MhhH0yWBj8sA7jxJI7FuyPhi0YJPinIElJdWgDnb4Lqe99WzaViPV9kLrtU0VzaaxL/cAQeUg4LdXRYm3zO1KkghLu6K0L4nKUb8gpFbglhPl7HpBrCS0h/ARTDhhOUlicvkoUqq+ENQGXmTA3Lok+5hK3YyUZEu76WWKJfQdyN0azlgl9QYbQfNVbxiNKNX1DLQZI8RmTJdsnjv7KS84hf3rbQwH1I5L/5mp0gRHDN5jnSq7V7vq0cP2a0uEF5WwodqXidmfWz0rJuy/3V4rvKU06HuxS84Zfk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjFaVWtLbnhTdFovOURYbkU5azlOQ29YdzZZMEEzU0QxeklFdlUveG9UOWlo?=
 =?utf-8?B?Z2lRZGQxSlJVbGR4ejZSNDBWZ2FQMWxWblJKVlBvTWtlSmxTSjJrdEVUQUJx?=
 =?utf-8?B?a3Q0QWxPaDZESk93T1JEMXlQeXpVeGhWeXVLckNxcnFrZk0xS29EQkpHbjVK?=
 =?utf-8?B?Tzk3Nld3b2pVRFhSREVGbkkvQTIwYXA3RmU2d0RkY1dQYnpoc3VONVhXSTZw?=
 =?utf-8?B?NzRjUFA4RXdlWklOREN1WElLcjlBbGhma2tQL1JBdUtoNTNSdEErUkFCR2dN?=
 =?utf-8?B?azBOVXhFRFBvWGFKdC9CazN2bmtsR0dzRU5GUTFmTW9wTDBQN3dPcWFoaGNL?=
 =?utf-8?B?d0k1em5DNHdVeU4yV0M1U0c3ek0rQ0M2Q1AyeDdQS1JaM1lrUlpUc2x5bTRl?=
 =?utf-8?B?WHg2eUJyWkwzTlJqRUdlb1JKVWh3RU1GNGhuNmQxTnIvWVlKeVhIV0RSb0ln?=
 =?utf-8?B?ME1xZzlnMURyenFIUVVWNG9oS0xSbmFoOENaaWVUUzZkMy9PbFZ5UitUVmsz?=
 =?utf-8?B?a1MzTENBd1FaVGtlLzRUUTRBc3FuczVuNVh0dU1kKyt6WTdTdWZteTR3OXp0?=
 =?utf-8?B?bEhrYUZPUWR0a2ZVRG1SckNlN0JObFRjeFhHeXhTZW1PN3lIa2VsdVU2bEpL?=
 =?utf-8?B?cE1yZDJwY01lRXpUdVRrQTEwaW9vSFVFVnVyOUhxY2pnTUxKVHU4c2diZS9N?=
 =?utf-8?B?K1ZFc005ekRHYjFnVXdzSUhraUJXRVpFOEU5ajNVQ2EyL0wrMkFqZ3p5SDBQ?=
 =?utf-8?B?YUQ1MnlwbnNDK2RjWUh1QTBSWkhXRGYxajl0bldNa2hPMmJTeUxQbDJNZEds?=
 =?utf-8?B?Qk1pa3JxVG5ZNitMbG9LcHhQVW5Lc2ExZU40MWZLRTZjYWtid3hnT1V6UEEz?=
 =?utf-8?B?Zmtvd0pXekJOOHBOUHRHaDVabDNWTW1mTGdzRnlTbTFEa2FRUVNmSmpFZUFs?=
 =?utf-8?B?dXlnUS9IZnY1VWZ4WW1LT1ZiQnJtOTg0aDhnWjNFL1c5TU1DM29YNjFxWmFa?=
 =?utf-8?B?cHQ2bWVUaGtqNkRGWFVnZzRUSEZ1RFdTcERQazVQQmhQcTV6MlNRdW5SbEVu?=
 =?utf-8?B?SGxJVkh1NGROUEhRdi9JZ3ppWkJTUS91bjlqWGNwbzIxRXRQZWNhclhSdFBX?=
 =?utf-8?B?cEI2Q0djL3pQNkorcnk5TXQxcWRDZnhoUDJxNnBLbS9PT2k3Ni8vejMxQ2Fr?=
 =?utf-8?B?Q1ZTdlR6Y0IwWXZJZlNSeDh4ZnFsMDNIV2UrTkhIK3BQQWJqekxwWUZma3JO?=
 =?utf-8?B?dDg3bmU5SHY3ZllCVUFrMkxqY1pjalZmOU1PYmoxb0lJVnRFdTBrbzhBU1lV?=
 =?utf-8?B?b1p2TGZQS2QxMDMvQWt6L0FiNXJPMXJNbVU0ZUloR21MZWZYZ2czNjAzWWho?=
 =?utf-8?B?UytEbWVzbTMvQWtpUFpyWGFlOW1TL3UwbG94aVdQUDVmTWpVS2dBYTF5RmFu?=
 =?utf-8?B?cEMvZ2t2dlpZUGJSaVpBY0FkbnRVMDc5WUdTZXI4L2dKV3RoL1g3bWV4blJi?=
 =?utf-8?B?TmFtNzhSNXhHc3l2cTJsN21QdGw5Ky9pWFErNms2V1FpT2VRSGZ6RzRuQzNr?=
 =?utf-8?B?T2tQMnVDV05PZ0ptUWYzRGQzYzRDT2srMng4SmpUbkg3MTk0NkZJTUtSSnBP?=
 =?utf-8?B?UEJEVE5Ka2xoaWl0QzB3aFE4dElrQXRSaHduTzlvN2lLVHZrQTZWdGprM2ds?=
 =?utf-8?B?RHRzbWx6bkFidGVucXlVV2NocFVMWWlnOFBueGJXbHpkbnlZT0g0K0s0ZUZV?=
 =?utf-8?B?YkR1aE9GWGxrVFQ1TlZmYXlONDc3U25MM0dCdy9xR2pzSWFlSDNYN2dJY21B?=
 =?utf-8?B?YjFVWjdHRS9DVWVzOTI5d21KS2ZVQnhoWFZKTVFINWdKZVBrWW1BNnJ3Y1ls?=
 =?utf-8?B?b3hqY0F1bitSaXJ4b3F1ZEZTYU5hR2R6ZU5uZGdNTkU3eDBCaCtFN0VTbjRP?=
 =?utf-8?B?SnVWNzhsaEUvYkVEK0tZVVNicS9ZUThpTjRGWHo2MEsvVGFtK3pvejdCU0lW?=
 =?utf-8?B?VWVseFhnVHdsbnRHeEEvNWp6QjRIWkxJVVFleDNZVG9OSVpHTVo3SHBIcnhG?=
 =?utf-8?B?SDZpU01jdjhHcDNBc01rcVFwQmpsM0NDU2pIYmk5WW9XUVk3bXNNUld3K3p4?=
 =?utf-8?B?SlRMenZjUGY0amsrVi9RUE9FK3QvR00wRjNpaFNBME9PZUd6NUg2TjgwNmpQ?=
 =?utf-8?B?T3FEa1YrZXlzQWpmbzdBcVZsYTR1RzZVdm9YL3AzazBmY3VqUHMyUnhDczdw?=
 =?utf-8?B?R0dIbHVNSmRQOHlSNmlEQVdMVkVHWjFyNFJMWXRYeXM5WThZYjJhL3Izcysx?=
 =?utf-8?B?dmdlLzJDdkU0a2hLTkgzKy9lUjZSMGxmd0UwcEhHVmhQWnlOY2pOdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6536034-430f-4ac0-302b-08de79f6f8b0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 14:04:37.6600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pvvc0icLoXvdVeq/MSjLFLZt4rMbFvoEoxLrgxHguMKfUC3+m9dN+DhhtJP1LSRTR4MOamaca/+KV95Mhl+J2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8572
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 4941E200EEA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_SPAM(0.00)[0.258];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 01:14:03PM +0000, Mika Kahola wrote:
> The LT PHY implementation currently pulls PLL and port_clock
> information directly from the CRTC state. This ties the PHY
> programming logic too tightly to the CRTC state and makes it
> harder to clearly express the PHY’s own PLL configuration.
> 
> Introduce an explicit "struct intel_lt_phy_pll_state" argument
> for the PHY functions and update callers accordingly.
> 
> No functional change is intended — this is a preparatory cleanup for
> to bring LT PHY PLL handling as part of PLL framework.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 48 ++++++++++++---------
>  1 file changed, 27 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 8fe61cfdb706..ebdcab58df4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1178,7 +1178,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
>  
>  static void
>  intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state,
> +				    const struct intel_lt_phy_pll_state *ltpll,
> +				    int port_clock,
>  				    bool lane_reversal)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -1195,17 +1196,17 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
>  	 * but since the register bits still remain the same we use
>  	 * the same definition
>  	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> -	    intel_hdmi_is_frl(crtc_state->port_clock))
> +	if (encoder->type == INTEL_OUTPUT_HDMI &&

This was discussed already elsewhere: encoder->type can't be used to
determine if the encoder is in HDMI or DP mode. In fact on LT PHY
platforms encoder->type will be never INTEL_OUTPUT_HDMI, rather it's
INTEL_OUTPUT_DDI, where the actual mode of the DDI encoder could be
either HDMI or DP.

The ideal would be to deduct the DP/HDMI mode from the
intel_lt_phy_pll_state instead. AFAICS ltpll->config[0] is explicitly
set to 0x84 for both the computed and table-specified HDMI PLL
configurations and config[0] is not 0x84 for any DP PLL configurations.
Could be used that instead to distinguish the HDMI and DP configs?

> +	    intel_hdmi_is_frl(port_clock))
>  		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>  	else
>  		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>  
>  	 /* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> +	if (port_clock == 1000000 || port_clock == 2000000)
>  		val |= XELPDP_SSC_ENABLE_PLLA;
>  	else
> -		val |= crtc_state->dpll_hw_state.ltpll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +		val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
>  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
> @@ -1248,10 +1249,12 @@ static u32 intel_lt_phy_get_dp_clock(u8 rate)
>  
>  static bool
>  intel_lt_phy_config_changed(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state)
> +			    const struct intel_lt_phy_pll_state *ltpll)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	u8 val, rate;
>  	u32 clock;
> +	u32 port_clock = intel_lt_phy_calc_port_clock(display, ltpll);
>  
>  	val = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
>  				LT_PHY_VDR_0_CONFIG);
> @@ -1262,9 +1265,10 @@ intel_lt_phy_config_changed(struct intel_encoder *encoder,
>  	 * using 1.62 Gbps clock since PHY PLL defaults to that
>  	 * otherwise we always need to reconfigure it.
>  	 */
> -	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +	if (encoder->type == INTEL_OUTPUT_DP ||
> +	    encoder->type == INTEL_OUTPUT_EDP) {

Same as above, encoder->type can't be used here.

>  		clock = intel_lt_phy_get_dp_clock(rate);
> -		if (crtc_state->port_clock == 1620000 && crtc_state->port_clock == clock)
> +		if (port_clock == 1620000 && port_clock == clock)
>  			return false;
>  	}
>  
> @@ -1759,41 +1763,41 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>  
>  static void
>  intel_lt_phy_program_pll(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> +			 const struct intel_lt_phy_pll_state *ltpll)
>  {
>  	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
>  	int i, j, k;
>  
>  	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_0_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[0], MB_WRITE_COMMITTED);
> +			   ltpll->config[0], MB_WRITE_COMMITTED);
>  	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[1], MB_WRITE_COMMITTED);
> +			   ltpll->config[1], MB_WRITE_COMMITTED);
>  	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_2_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[2], MB_WRITE_COMMITTED);
> +			   ltpll->config[2], MB_WRITE_COMMITTED);
>  
>  	for (i = 0; i <= 12; i++) {
>  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i),
> -				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
> +				   ltpll->addr_msb[i],
>  				   MB_WRITE_COMMITTED);
>  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_LSB(i),
> -				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
> +				   ltpll->addr_lsb[i],
>  				   MB_WRITE_COMMITTED);
>  
>  		for (j = 3, k = 0; j >= 0; j--, k++)
>  			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
>  					   LT_PHY_VDR_X_DATAY(i, j),
> -					   crtc_state->dpll_hw_state.ltpll.data[i][k],
> +					   ltpll->data[i][k],
>  					   MB_WRITE_COMMITTED);
>  	}
>  }
>  
>  static void
>  intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
> -			       const struct intel_crtc_state *crtc_state)
> +			       const struct intel_lt_phy_pll_state *ltpll,
> +			       u8 lane_count)
>  {
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->lane_reversal;
> -	u8 lane_count = crtc_state->lane_count;
>  	bool is_dp_alt =
>  		intel_tc_port_in_dp_alt_mode(dig_port);
>  	enum intel_tc_pin_assignment tc_pin =
> @@ -1895,7 +1899,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
>  
>  	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
> -	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> +	intel_lt_phy_program_port_clock_ctl(encoder, &crtc_state->dpll_hw_state.ltpll,
> +					    crtc_state->port_clock, lane_reversal);
>  
>  	/* 3. Change owned PHY lanes power to Ready state. */
>  	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
> @@ -1905,12 +1910,12 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
>  	 * encoded rate and encoded mode.
>  	 */
> -	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
> +	if (intel_lt_phy_config_changed(encoder, &crtc_state->dpll_hw_state.ltpll)) {
>  		/*
>  		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
>  		 * frequency and protocol type
>  		 */
> -		intel_lt_phy_program_pll(encoder, crtc_state);
> +		intel_lt_phy_program_pll(encoder, &crtc_state->dpll_hw_state.ltpll);
>  
>  		/* 6. Use the P2P transaction flow */
>  		/*
> @@ -2001,7 +2006,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
>  					       XELPDP_P0_STATE_ACTIVE);
>  
> -	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
> +	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll,
> +				       crtc_state->lane_count);
>  	intel_lt_phy_transaction_end(encoder, wakeref);
>  }
>  
> -- 
> 2.43.0
> 
