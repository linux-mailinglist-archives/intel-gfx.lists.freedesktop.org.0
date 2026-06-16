Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EIsgOomtMWogpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7710F695149
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WwEjQFHN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE3C10EB05;
	Tue, 16 Jun 2026 20:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B1310E83E;
 Tue, 16 Jun 2026 20:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640583; x=1813176583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=5vBbJ6Ykg/PfpANcWHEWytMWruSSnwhTXN8k9/2ggco=;
 b=WwEjQFHNLQ7jv7KwWqU+yd2yxi0RoX9IuaMNxdvxNLxQ/EZre6MKam2A
 C2k/MR89veTfD1gtM7KfkmcZd60m0lolowHF+lMpS1q7WI9UvMTERdtZ9
 eHCnsYF9u7Nd+H3ZnSo+BrfeTZG2ujZjgRpRCIkjBgJJb3n0RUYDg82hC
 jn4md36SY78I5XqE/+52c0NkfoagPejKEg4AOaAlh1JkQlFDvFANZZ+0l
 CoQBjqD2rfiqeQB3+pqkD65ciH7EskOXqjF0KFZVRCsmoItSU3NtEZMNw
 fqUHAL5ssP1L1SW52KzORj65FlB2AtXJkKdvsihiBAqjavlsKSHEemiOf g==;
X-CSE-ConnectionGUID: b7MQXFn0Qu6djs2JZxUikw==
X-CSE-MsgGUID: hdR5oN1ATv2ZAykamWtvxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82618644"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82618644"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:43 -0700
X-CSE-ConnectionGUID: bRI270XgTiWD7oF0IRK3bg==
X-CSE-MsgGUID: h+Asxg8FTLWm2SB3shIvsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="241515526"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:41 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CiFvrHgyA112B8zE9VIOabLwD6iHH09XZwKZ9YT3OKm126IdyERNC+ulRe8++EEMtx9NviRa78jAI2HjIp48i1d3TbozTRMoXBvMbhk/H7YMHuUKFT1iaIvPDxBysZTp9RItNShLacOpZMsY5C0HfDzeAVM3ofaulmjygl0+K5gm1APnzkhd5mu47Zs3sLcXX477giKUJ2w/Bx2EajRB8dYpBwgdb0dFsDuvqupp/ednhvUSawL/Bra/xpYMyx0LIaaz40s0sWBNpsUzUoay9zfNirQUDQVAobrmPoCJu7DvUcadQft4J+abudaAC6iW3GFyx8JkysjjrlGYi33Esg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nDiPxvozOLa9yMeyA07XJOiPBTJl+2yGIyObGRKCUQ=;
 b=Fb481wU7BJXChXRl1Y2DFlrYd80WrRByVxJIWzXRbGX5hh2vUOhZYEcEaTu7CychV8yTRBZ+t58CZhNpH9drSMS+OIqp3+SbwT8EKTO/5LZzLSSWKXE/llxjwKbS+omDByunpQrN7T2uUKlrBMNnb7+fyVUQEdGxDkb376lilNOQ7DgOe1/c2diNrdk8NdOPGt4pIzoOLsBtfU2sIVyO4vvf8sHRU5gBlanDLYFyNfqrFCbXTPtihK1sJp+klTZHys2+V5tX8mqfukOgnEnBGEXKnSoRuIJW0OMm3x36Fhf/Ul/9cH5/+xTu9usz9zGyY8DpLUlZPwFPCuBMUep0fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:27 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:27 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 07/28] drm/i915/dp_link_caps: Move forced and max link
 debugfs entries to link caps
Date: Tue, 16 Jun 2026 23:08:27 +0300
Message-ID: <20260616200849.3534628-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 21b01e2e-82bf-4389-8cad-08decbe32aeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: oHlx0EzQKLNE+nUqC3Wn2VzbMFf5K9AJFcSKvp0huciQR1bUJ4nfOQ7YAolJbCihNz4iRXaBd5+a9PHUTxJPCXxt2p7S/qyGEcMF7RjkPyvQxsWMqCPu9EKCepuyQ8NOLYUZ2CPVQOWZXUtmD/90mYgTv20umleviTQuis63AZQsWA7EbyHZHp0s8uQnM88YyP606t0ZU53vQpCrdOXgCYhzH7tKoLP/EFpJPQefndsJ8wXt7DdEHz9GzNr1J/2sxrdz3VxHH7CoQEKtfXcJOfRYB5c+tN5domFpygj78swSmYE/Ekub4E+deqD4wUw8IoBE4P80+JPGtT+MMjaj7IEBBZEgBPiZKFdcG7mu9p24aj/ch1LTYcQjeNqNy2UsXUBE8z0KPx/aOJsCRXkRZyMao12vzbp/pC9ZIXmhhgbyVmZ6SFUbemmHsiCM4JnbvwvdmfuDedhgJE13MF9ZorJhn4SUOVUv4R6R8FnTV9vVawtu9FVEYRvYp123JUNm9SG6WWKSY2MahD0zWJOA7pm9/pKKWKBveA4JGvwXyQpj8m+eqrYctNE2Z1lvlTWmh9dPbGDnjHQhFMR0cXzCb17gFQwERT1u7h7/5kJcyvNnGqPauHizrn7m93/bs9mlOREBeKSETRPtxDmQZhNWbr+p6P+unuRlb1KD2xrLrOR0+pzKB1uXL4oZLv5MTMji
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWF2dVBUMDJJVXVZL0RtSktHK2xPRXBubm5tR3dGcjZoeUJZdVg3SjIwTEgz?=
 =?utf-8?B?R2JWWXY4RlRjOElkdlErZFhLeXdGNGMrMGNTS3c4dXgwdkxrSDR5MnRqOHhO?=
 =?utf-8?B?ekw4bmlVYWMrMjM5MHVkRFJYeEZUVkM4RDgyMVg4bW5Sci9hamNvSFFXV0pJ?=
 =?utf-8?B?Rk1LRml4V0ZoQlB5MFRWOFBHUTZyeHFaa0cvekxvVE1nZ1VBSnJEMGF1KzVN?=
 =?utf-8?B?NU1EREhDRVRHcEhUeTd5amhtQ0xiREZnMkExK09uV0FyVTgzeVFtaU1wU2ZR?=
 =?utf-8?B?MGp2NDBvMEtqL3ErS0hZUlM2cDNpcTBPakFxRUwxU2d2eTBPWVlvYXJJOThv?=
 =?utf-8?B?OGNNUXBhVHlnQldVeFZwbXNFc2prRmY0YmxDSnBvZDM4S2xXZG9FaGdhTXJN?=
 =?utf-8?B?UFllTDZyREg0c3Nja0JmbmtaWi9sMnNwS3Z3OVFhZEdCaVFpUGpXRTdabG1G?=
 =?utf-8?B?S1ZqSSszRkMrWXZ6Q0YxVTZOZHlFcFRiNDBPMUxSSEk3UmlnSDdEeCtIRURG?=
 =?utf-8?B?dlJObXV4QkJ3ckNGUXBGN3BuN2dmOFBPajlIMlU0Vzk1dVMwNmszSDVxOHNZ?=
 =?utf-8?B?ZnpFNkd1d0RYRDJtYkY3VFBkV1k1T3lwek5icHQ2alNYL0hHbFF5R1RJdUgw?=
 =?utf-8?B?OS9xek9BUkswamNBM2x1V1NyWFFWZWJZY3ZmU3BOc1ZrQWxuVzlNRWtEaGVN?=
 =?utf-8?B?R3RzVUdUUGRjTDFzOURuRm5Md29WMjgza2FYeE1YL0VnTVdnQzhudW1RQ2Y3?=
 =?utf-8?B?WHpmZU00NmpmMHpmTjJ1MitkOEsremtWdUZhM01rbEtFa2JkeFhjNGZUSHZh?=
 =?utf-8?B?MWZLbEQwbFQ3VlNrbzRPMWp2QzFGbHdrdXdzbmNUSG5mVzkzVmZOZG1OSW5h?=
 =?utf-8?B?VXh4UmlkN0xTdnkyb0w0cmFYczhON1h3TXd0T3ZHMzBhbVJ0d1hOaGVnZnFj?=
 =?utf-8?B?cFlscE9CaDVVRUVaakJrSk1KOWJMdEhYckhod2pib0Frb2ZkUDNZci9iMjJL?=
 =?utf-8?B?anBoOXJzcGYyb3EvVnpaVnVBWDJjZUlBMEQxTTg2MVpRZ3p6MEgzWllPN09N?=
 =?utf-8?B?eTRqY09meXZwRlZxbXE0NTlOMWZXUE9tRnRFbktoOGVNN1pPWnpzQ3R3dVJ1?=
 =?utf-8?B?MUNCWHIrdFVxUFcrczhoc1dEMVBrYWJLS3lJbWdnQmNUVDhKM3B4cGYrMHlF?=
 =?utf-8?B?RzU4cStnaUxJN2hrUnJpMU9tdFNtVXY4dEYxVlpaS0hqZjgwZVVkclRFZEdC?=
 =?utf-8?B?eHpWbDlMWnJ3QlBHbFVmbnB1bXVpaFd4bXlyaEJQMGR4NFNrTUFlaWRCUGlL?=
 =?utf-8?B?WUJQSjlsdXh5eVB3bC8rOG5DazNhaEdrai9na2Fpc0RWc0dPMXpqT0NNU1dy?=
 =?utf-8?B?dEM3NHFuMXRZWEtsbHRteHdUcGs4dU85SWNlZXlFSCt5RndIbEE4ZkFnbEI3?=
 =?utf-8?B?OU9WaGxhNUdORkhwRkIwQUo5d1dIVUVXaVptem51YnFYclpBM1lGdmV4MXFs?=
 =?utf-8?B?T0NQeHVmMmZsQlJxUUhnclVpMXppcHFNaS9zbjFzOFA4VzRXbnRGWHlPKzl2?=
 =?utf-8?B?Q0phZHMzeXFsek1KL1diRTlRL3pHMVBFVkM3eHZuNytQNzNKVmdQZlJoSVdO?=
 =?utf-8?B?ZE1LWHhXLzZDN3lQczdkVENLcjgyUmEyVVpsMUlvZ205eWJ3dEI3cDJWUlhj?=
 =?utf-8?B?bzJ6UWlMZGtsYXMzd3cyRVVVVDM5b1pnOFRDUVFpbTh5ejJHR2IwSzUvVjVE?=
 =?utf-8?B?QnVqUElJRjlLYzFCL05TQ0U5Y1pBRy9haDhVcVJmdXU1VkV0b0puei9HdXJv?=
 =?utf-8?B?VTdPYm5IWGVoM1l6N1FYL0NSRFR0OVRJQTJ3WFBsVzVRdm5DVmZrcks2UEdC?=
 =?utf-8?B?K0lrbXhCOXMxanYxOEIyenRBUmhpZGtpU3JXUmwxNHIxWCtLam9wVVBVOEkr?=
 =?utf-8?B?MzZUMXBXb3hpRVh6anJJZkhQbFJxWWtwOGV2VFFqWVVZbVlpbi8xeEo3VW5J?=
 =?utf-8?B?OHVFaHJPYmM2aVdpVkhueVlZUUNyWUFaclBva0FQVFFKSXVRTWR6eDBSVTNl?=
 =?utf-8?B?c1dVaGlCaFE2Z2hJVXQveG5MVGhqVkhPMGNuOTlYbHFDUTVqV3hoakh1cWtz?=
 =?utf-8?B?cERqdWZJbmZnYW1IcmMrSHpjeFFNeFpnSHBta0NnaXVpYWlYaE1YWGZ3dVhV?=
 =?utf-8?B?aUpKZGcxcW5KYmp1TXZvemFVU2NPaDJMa25FM3pyV3BISW9qazVkd1RJYkE0?=
 =?utf-8?B?Ri9DYW5UUm1PZThXd0paV0dJUWNHNmIvb0ZyVm9NdFdYenliMDhRU0xtVENW?=
 =?utf-8?B?RFVSRVhWR1hueUVVM3grZFRBcXFnQUtwWWc2MjR1VW9zUHREZHlYQT09?=
X-Exchange-RoutingPolicyChecked: m2CRzPqtpN+sRTVfsHcgPTeJeuVmpjWMo+08GHcQ0yCWUYBumz+PEc9QSiGNRdIbJTA22ODI3EF0oa+u+U5PK4qK37kHpaKR6OXCGULihZnjkaqJr5Wi8kZl26J1nRg6C7qL8r1FOFDh7+xAv+9xBYJ5AfuSPdZUf31/B6Y+A8rpow0xx4MdCfowN9pB88qXUh9pI16m469hmqFpp9TVeEL7UtUq9qTcqBXaQAVErV7BWmNenhtif4YwsnL9cz0UVSK24KfThQkb9bjS9Kg7NKtr9VAQFiS16imZ8uP46CFkawwwnPrcgNZ07jJnTvInasOBiGQMlIKH1mZnJoHs4A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 21b01e2e-82bf-4389-8cad-08decbe32aeb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:27.3837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DI6ksPPWaYkocVoXPJHmBINFFt4WAIhBbrwCKfpECSnwSHZfjFdBma1isG56wLx8msHr1h7rPj9P8DyKvCVd6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7710F695149

Move the debugfs entries for the forced and max DP link parameters to
intel_dp_link_caps. Their functionality is part of the link capability
logic and will be updated to use the link capability state in follow-up
changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 280 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   3 +
 .../drm/i915/display/intel_dp_link_training.c | 263 ----------------
 4 files changed, 285 insertions(+), 263 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 08004c1ba03f4..3f02868ef105b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -32,6 +32,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -1342,6 +1343,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
+	intel_dp_link_caps_debugfs_add(connector);
 	intel_link_bw_connector_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e39e6c99ec25f..ea90e84500a89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,6 +3,7 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/slab.h>
 
 #include <drm/drm_print.h>
@@ -70,6 +71,285 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps->dp);
 }
 
+static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_rate = -1;
+	int force_rate;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_rate = intel_dp->link_rate;
+
+	force_rate = intel_dp->link.force_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_rate == 0 ? "[" : "",
+		   force_rate == 0 ? "]" : "");
+
+	for (i = 0; i < intel_dp->num_source_rates; i++)
+		seq_printf(m, " %s%d%s%s",
+			   intel_dp->source_rates[i] == force_rate ? "[" : "",
+			   intel_dp->source_rates[i],
+			   intel_dp->source_rates[i] == current_rate ? "*" : "",
+			   intel_dp->source_rates[i] == force_rate ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int rate;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		rate = 0;
+	} else {
+		ret = kstrtoint(p, 0, &rate);
+		if (ret < 0)
+			goto out_free;
+
+		if (intel_dp_rate_index(intel_dp->source_rates,
+					intel_dp->num_source_rates,
+					rate) < 0)
+			ret = -EINVAL;
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : rate;
+}
+
+static ssize_t i915_dp_force_link_rate_write(struct file *file,
+					     const char __user *ubuf,
+					     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int rate;
+	int err;
+
+	rate = parse_link_rate(intel_dp, ubuf, len);
+	if (rate < 0)
+		return rate;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_rate = rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
+
+static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_lane_count = -1;
+	int force_lane_count;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_lane_count = intel_dp->lane_count;
+	force_lane_count = intel_dp->link.force_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_lane_count == 0 ? "[" : "",
+		   force_lane_count == 0 ? "]" : "");
+
+	for (i = 1; i <= 4; i <<= 1)
+		seq_printf(m, " %s%d%s%s",
+			   i == force_lane_count ? "[" : "",
+			   i,
+			   i == current_lane_count ? "*" : "",
+			   i == force_lane_count ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_lane_count(const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int lane_count;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		lane_count = 0;
+	} else {
+		ret = kstrtoint(p, 0, &lane_count);
+		if (ret < 0)
+			goto out_free;
+
+		switch (lane_count) {
+		case 1:
+		case 2:
+		case 4:
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : lane_count;
+}
+
+static ssize_t i915_dp_force_lane_count_write(struct file *file,
+					      const char __user *ubuf,
+					      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int lane_count;
+	int err;
+
+	lane_count = parse_lane_count(ubuf, len);
+	if (lane_count < 0)
+		return lane_count;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_lane_count = lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
+
+static int i915_dp_max_link_rate_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
+
+static int i915_dp_max_lane_count_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
+
+
+/**
+ * intel_dp_link_caps_debugfs_add - add link caps debugfs files for a connector
+ * @connector: connector to add the debugfs files for
+ *
+ * Add the link-capability debugfs files for a DP @connector.
+ */
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
+
+	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
+			    connector, &i915_dp_force_link_rate_fops);
+
+	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
+			    connector, &i915_dp_force_lane_count_fops);
+
+	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
+			    connector, &i915_dp_max_link_rate_fops);
+
+	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
+			    connector, &i915_dp_max_lane_count_fops);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 61dbce86ee3d0..c6a84891db464 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
@@ -16,6 +17,8 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b915cfdeabd0e..cbef3d45baf9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2660,257 +2660,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_rate = -1;
-	int force_rate;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_rate = intel_dp->link_rate;
-
-	force_rate = intel_dp->link.force_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_rate == 0 ? "[" : "",
-		   force_rate == 0 ? "]" : "");
-
-	for (i = 0; i < intel_dp->num_source_rates; i++)
-		seq_printf(m, " %s%d%s%s",
-			   intel_dp->source_rates[i] == force_rate ? "[" : "",
-			   intel_dp->source_rates[i],
-			   intel_dp->source_rates[i] == current_rate ? "*" : "",
-			   intel_dp->source_rates[i] == force_rate ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int rate;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		rate = 0;
-	} else {
-		ret = kstrtoint(p, 0, &rate);
-		if (ret < 0)
-			goto out_free;
-
-		if (intel_dp_rate_index(intel_dp->source_rates,
-					intel_dp->num_source_rates,
-					rate) < 0)
-			ret = -EINVAL;
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : rate;
-}
-
-static ssize_t i915_dp_force_link_rate_write(struct file *file,
-					     const char __user *ubuf,
-					     size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int rate;
-	int err;
-
-	rate = parse_link_rate(intel_dp, ubuf, len);
-	if (rate < 0)
-		return rate;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
-
-static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_lane_count = -1;
-	int force_lane_count;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_lane_count == 0 ? "[" : "",
-		   force_lane_count == 0 ? "]" : "");
-
-	for (i = 1; i <= 4; i <<= 1)
-		seq_printf(m, " %s%d%s%s",
-			   i == force_lane_count ? "[" : "",
-			   i,
-			   i == current_lane_count ? "*" : "",
-			   i == force_lane_count ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_lane_count(const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int lane_count;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		lane_count = 0;
-	} else {
-		ret = kstrtoint(p, 0, &lane_count);
-		if (ret < 0)
-			goto out_free;
-
-		switch (lane_count) {
-		case 1:
-		case 2:
-		case 4:
-			break;
-		default:
-			ret = -EINVAL;
-		}
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : lane_count;
-}
-
-static ssize_t i915_dp_force_lane_count_write(struct file *file,
-					      const char __user *ubuf,
-					      size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int lane_count;
-	int err;
-
-	lane_count = parse_lane_count(ubuf, len);
-	if (lane_count < 0)
-		return lane_count;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
-
-static int i915_dp_max_link_rate_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
-
-static int i915_dp_max_lane_count_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
-
 static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
@@ -3033,18 +2782,6 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
-	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
-			    connector, &i915_dp_force_link_rate_fops);
-
-	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
-			    connector, &i915_dp_force_lane_count_fops);
-
-	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
-			    connector, &i915_dp_max_link_rate_fops);
-
-	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
-			    connector, &i915_dp_max_lane_count_fops);
-
 	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 			    connector, &i915_dp_force_link_training_failure_fops);
 
-- 
2.49.1

