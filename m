Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBe8L/Cc8WlfiwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:53:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF6348F92D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F2110E054;
	Wed, 29 Apr 2026 05:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YchHr0+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C6210E054;
 Wed, 29 Apr 2026 05:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777442029; x=1808978029;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IapnG3BdyOxSF7A0diXUW7tsetKXzvnadEU2zbq21Tk=;
 b=YchHr0+YojC6vHQwgs832PBn7MWwsfOYOoS3Jr7xeQNrQcqzfkIMgl9c
 JWAxM2atgkr1t6HGpE57r2lq9AagHtbN7YPzVjiZB2NYA7lD1RQHzj0MD
 VIcsrF+WD+Mk/95mg2RzcLx416ZsBrsC/r11OL+dyVMhR4V/dm5i4mEdR
 Xfeh5i/3Ts0oQpmGn/uZI/W69wjEPyzOO/3cL+u7irEU4M9CWHzxltl1w
 jAu/o3AIiT5rPvP1NIJ1gqL9qtuAZYj4rN3qXSG6crnVxIIVPS+sIzCAo
 qDykn0b5finBinZFTTAYadrOhZqi+G798ZRfl6IR0Fjs7ryQlWxjGjPKW w==;
X-CSE-ConnectionGUID: LhZ1HyD1Tdak0lY/iTIw2w==
X-CSE-MsgGUID: kaaL2k4cRACKHnqEsetSFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89452884"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89452884"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:53:48 -0700
X-CSE-ConnectionGUID: dnVyUtq6Rsi92tp90JZvYg==
X-CSE-MsgGUID: Prh9gUAPRgKtDCu0vGj2sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="238139645"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:53:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:53:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 22:53:47 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FdGVVUjo1nFQbuI9/4nkdxeFyOyIiNSdipuDPkjCHneHxEP6SqvQnGaD2B8h3DFNQB/obDVP3lCsekMrFBgbe0zUGDxdNR5vFa5hYtzDeLQbrjUtVznEtT+XQy5RYihbZuW7d6JkzMDJ9d71q7ppamd6HI/iPtvksFXnRb5p5CYwOiv3ZMkJVMuVY1sf7a/br9UgcTXa221npccV+xQrNp9+GhRBYo18GXz340zwqNRkhZkrsyYcVP/8/OJcJrsAPc56wVdWbNGnViYppR7ndYhG4NYpEsBx5Iij4uPCyeM6KjLL3GH4NlGZfbT1eL4U1ZwJj671R+J2zEW6F7uRKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDGxnZJLbBtNJWyda/VCxsBy5zyRWhZr8Watl+WNKlk=;
 b=k/Pe9f8HvxdZi15oQRV2ijTZWCBN6mVt9kUKHcgbKorm2AFejetThNg3AFjQW5/pECbBL3qckSynPCd9YQi8sAj0q4nMbh5kCc/C6FsDnOUy376HplAVEz+lujCW0c/aeSd8JfkMUWCGhnDHjZ/1mkmUNAlMiyJY+dczmbUOQy1nvq2alz9mUI/wlAGn6FXD+Y54sI0ORcRjuXmcbZiUdHdceLbERPVhAVB36qk8kvCZsb92g0OqDu2xAQIyGYjLuog9SwA8dMGWGqmWrWqrBaL+VtnMh6sqdFyc190UczyG2THbkDwyqIVuHANpO/yxPvJMGWBltAoe88xArxaq2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 05:53:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 05:53:43 +0000
Message-ID: <28c0074e-175f-456d-bd6b-d81dd8f9b0b7@intel.com>
Date: Wed, 29 Apr 2026 11:23:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/bridge: prefer drm_printf_indent() over inline \t
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <dri-devel@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20260408082211.3040194-1-jani.nikula@intel.com>
 <20260408082211.3040194-2-jani.nikula@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260408082211.3040194-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0173.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::14) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: 03b5a5f2-48f9-40f0-853f-08dea5b3ab9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: XJ3bJZxmewW1afrVbWpReWTnTX4fM9QLrSXwlTPz4KSfOxtYcD9b09zbtqDnzxTXZmoZlXVn/o+1nrKnxG5OjsWJt7agJQZgibrfCCv1yXPKjPHYhl6AapN6zHEqETdPCmf/77dtV2O2aRw6SwvbqnfY/qsfg4sSVt+3C0EAs+8qxr8UwvZjnRKvpzdubH8HF0YtlvwJuw0rmiqUyLm4TVC2Q3rpRwWXv102CJg/tBmLO+g5rw8B41acVfWpyH2a/W3jCD0zDEp4yrnxep3QcY3YySvFQvyqnBDWJBobI7CbRX2cph1RHMZrrPhtFryHFEBhHCzux1VhopeoJn6M3mA4UqLpXPHlYq/kYorVYjIi90C7/affArwTiRADudByJqv0DSlMkAIbHRixEAuk1iGfXhC975gcF+AL/Ea2f+zEGf1pwTW3818IglVpGUnb+JOGqyhDsdm1LP4R/HmokFOYqifMh4xCJFv5drmt6VkPrV5D1Gktaw7z+V+DYGmsi1aG5ZRQfpum1Z2he/eOyT/VWkVtPpDcig/OHcyJt4/WZqrfV7uk9GDsxDShBJNgqOQGMYXhUQWj5OgRcVeXrENljtCzkIgyoHfH33GtDKP6umjIuIGW4lTNgvLAASxiCMe1/78+Y4U2qy/OcUY8yQmfUBQKa/iH2PBXRwdJ7HfVItmoCCmOqjgQBNkBUI9uJxetHakmYqBWi5Eh2Az+jjzHWDYb6OQPWl+kTbbN+ks=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVJ1UXVjZy84WExEeTZ3N0ZpTXhadThqK1FHa2ZMbXZYZ3dZajgwRFVFakRH?=
 =?utf-8?B?ZG01WURndU1JUVBLRzVIQmIrc25xQnBYNkRxVHhXM2RsMkpmdTB4QnBqS2xC?=
 =?utf-8?B?RjN6Wm0zMTdVM1A4UFJXY0hPTGU1c3lCKzUxSzBRR25lUFdVMmh3YTlQNWY0?=
 =?utf-8?B?bDNTVXlCcDM0cnFzMTFuYkJ4aFRqUWx3R1o5UXBMb1BJWlhRcHZXSnYxdlpR?=
 =?utf-8?B?MDlXNDN6U050VFhMYU5KS1hRMHNiRmZxUEZDV2pMdVA2NklLcVkvdGUrRDhm?=
 =?utf-8?B?SDJxblZyUDB2NHlLblJpR1Z3clVOR0xEa0JoTkZmYW56UkNyaFhEVWRua1E3?=
 =?utf-8?B?MDNsQzNMTXl0djJJQUxZcVUzOG1TT0NGelhaQUJuWnROcExpVm82Sllqc3Yz?=
 =?utf-8?B?TUc1c3IzTWNsa09XZW9hamE2MWttOGp0S1M4SzdoUXh1aXU5ay8xcXc0NUxQ?=
 =?utf-8?B?WVVISVB4dnBLN29jZEhOUlJnN3hOY3AyeHRUN25HTkZLT2NxWDV4SHNQZzZx?=
 =?utf-8?B?MUVpRi96M3VUM1dTc243SU9kbDdzZkdVSlphMnRyUldMdVRSUGZuUVdHRTR3?=
 =?utf-8?B?TWFERU9HWlVWMUJBZ2ZDc3Y2dWRvV1IxVVBrd3UzWVhNWGRNblQ2Mnp5UFpB?=
 =?utf-8?B?clA3LzR5cWJITjNnanpRNTY4WlZVTWZ4T0N2cnpUTDhmWkkwRllPOFAwNUs5?=
 =?utf-8?B?UWxGeFBzZ1YzNEplZDd1QUowRDRZNjhidkZWNHg3UEowb2JGalJ4bUlIL3NT?=
 =?utf-8?B?dGlKNVlCY1dMVzd6cm1IOEdpZzhPSGc1N0NSa0VsTzBBOTdYemZYRjFDa3FH?=
 =?utf-8?B?MCtzVXYyMnJrZnVsZGU0OGhDb21KYytmQTdIVHJiNStCRTZCVVF4VUQwbjZn?=
 =?utf-8?B?d3l5RHRtSFR1RFBVVHlIV09uc3NoUWpaZXQxczdKcFlNd3dwclF5Q0N6WlBt?=
 =?utf-8?B?UnZacWlONjc0ZzhVTWFrejBkTTFJRHV0czN3dFRkV1l4NjZFUTZnMXJ1cGdH?=
 =?utf-8?B?L3hZbHVaRUllU0loRm9VTm5ITnYybFZrQXRuTHZOb1lTWFNrc1A1d2ZGY0Jx?=
 =?utf-8?B?Y3F1UG1hdUtZQUI0eTZJWFNjS3I2Yzc2QjNDaFZEY3Q3bTFUVElYK0hCMitS?=
 =?utf-8?B?SXNoMGl6Vk1VdVJScWJJZCs1Wjh0V0NTbkFqaWtWWEJFUDN1c1l6RVdjb0tV?=
 =?utf-8?B?Z1ZoRnZ3RXBzcEVYeGRMM09aNG5vOTRaUmM5YzV4bFlsMjhKSXlCNXpJVjBl?=
 =?utf-8?B?YWl3TVYrTGdnYmVrbkh5T3JqOVl4SS90L0ZydnJvUCsxamJaeVlWcHl3NWxR?=
 =?utf-8?B?UzhlYzdDdTRIZzdUdktiejR0OXdTTVN6SnhOazJXM0NSa3ltVWQ1MTFMNEJu?=
 =?utf-8?B?NjlsUFBjeVJvaGdOWGVvNVh5MndEOXg5aG5VamZabjNBLzBGeHlKOEp4RWkw?=
 =?utf-8?B?WE5ldGgyc2dITS9pcXJmbi9KQmJ0ZVhZcWJNS1VCYnlZV2U3Y2RTSmdFVkVv?=
 =?utf-8?B?WjhkU3J1bG1wZzkxRy8xbTBWOUh4N1NuaE1vSENWVU9MSXJ2SWVyY0JVR1Bs?=
 =?utf-8?B?bHp3TWRIR2hNQzZrUDAvTnppSWNRRkRhY2cxeFZiY2I0WEgzUjNmQUF6L0sz?=
 =?utf-8?B?aG1Kd1g1VkkybzU3M29NM244LzN2MU1Vd2YwSHNOcmlXMlV4dE5uTGZlUnBx?=
 =?utf-8?B?NzM5N1VobWROQ3gvTG4wZ0RhZUpnV0FhRkVLQ2IweTV2M3BlbWxwNEM0V0Nw?=
 =?utf-8?B?THNZVVFxVVJ2UXJHUGVBdUhoWk16Yk10Wmh0Zm81TFdOZmFWL3E0aDIvY25u?=
 =?utf-8?B?cFhqL3hvMHRFeXJKbGZJMTN1VTRoRVd4RXAxeWpoVlBkdis1TlF3aU5zQXdU?=
 =?utf-8?B?SS8rSG85bWJod3BuaEJTdU42MnBOMEZ2NmxBM3NtMEFSckNLcU1aSmpTL3ZS?=
 =?utf-8?B?OXU5NFVWQWpTSDlXOFQ0L3ZHT2pNclplQXFoN1FZVUwxREhiUFM4TEkwR2dm?=
 =?utf-8?B?M1c1NHJmUjFPTHdERjhLSjVLaDVoWW04TitQOWZOT1gwblk3U3Y0MmVGRUMz?=
 =?utf-8?B?dFQ4SWRvbmlERXE5QXBLV3FPNzgzMEQ0RlAyc3VvRkNHYURzMUxocmRMU09Y?=
 =?utf-8?B?U3pweW9Lc1hEUmxQbnBQU1Z5M0ZQYjdYc2s1RjliMUtXUmZwUTBCQ3JzNkFh?=
 =?utf-8?B?bjdrTk9yYjRpUHcwRU0xMUdRWVRsRVdxblVsdCtXdkhRWVNkNlVVemNya1A3?=
 =?utf-8?B?aGgyVy8rYjFZVjQ2ekphNmRWelBIZXFybmVldzV4a2JGZTFNZlp3Z0kyQm5h?=
 =?utf-8?B?ZHlUQlM4ZnE0SkdYZHBzUHV0WGlGVTc0SFlMWFVIYUJHSWpzT0tEVW9NZ0FX?=
 =?utf-8?Q?Kha5DQS4l3brid0iGThdGFV19A0AKFgAwD2XC?=
X-Exchange-RoutingPolicyChecked: urc1m4gPUhb3YpJdn0FGWQBDxqL9DfXoupGpFkULQIdodoHGMZyaDIluF7/piE0n86BcnHHD+fp5e8BuF9AQXI8PK4xtiaNtOxsiJIsZ/mrLrm1Xwac+b3s0VmxcK7cKl4/JbE3Vqd6GCXpUUwXqgThSq4ky165avHhuN7A7abKTpiwq0Zc6UjrZiZxEEsR6BoY7aQ4t+8AcM3J+hBSJ1vG6bw7xSzafTT2SWk57kx/QTriNgs/Cv0R0wO1SrKWI17xSZGgaA2XRT2TqotqBQEOdhAKef8/W8A+Stvba3I2Zz1M2/AM0IYJBoC7jcQhSodr1SDkz+uYn9ZCGZ+UtJQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b5a5f2-48f9-40f0-853f-08dea5b3ab9f
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 05:53:43.4121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vvU6ptbnigIW3MLJIUB0M+CeJUGpeqdDktNie2H7SbEmIAuXVn6pszJi+xqMTsurydQAAuHfFVNf0p68L6Elg17ZfZ6KL5stLhmslTAr4oQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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
X-Rspamd-Queue-Id: 1CF6348F92D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]



On 4/8/2026 1:52 PM, Jani Nikula wrote:
> We have a helper drm_printf_indent() for tab indenting the prints. It
> makes the actual strings more readable, and highlights the indented
> parts better in source.

LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/drm_bridge.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
> index d6f512b73389..bac1aae497e0 100644
> --- a/drivers/gpu/drm/drm_bridge.c
> +++ b/drivers/gpu/drm/drm_bridge.c
> @@ -1613,18 +1613,17 @@ static void drm_bridge_debugfs_show_bridge(struct drm_printer *p,
>   
>   	drm_printf(p, "bridge[%u]: %ps\n", idx, bridge->funcs);
>   
> -	drm_printf(p, "\trefcount: %u%s\n", refcount,
> -		   lingering ? " [lingering]" : "");
> +	drm_printf_indent(p, 1, "refcount: %u%s\n", refcount,
> +			  lingering ? " [lingering]" : "");
>   
> -	drm_printf(p, "\ttype: [%d] %s\n",
> -		   bridge->type,
> -		   drm_get_connector_type_name(bridge->type));
> +	drm_printf_indent(p, 1, "type: [%d] %s\n", bridge->type,
> +			  drm_get_connector_type_name(bridge->type));
>   
>   	/* The OF node could be freed after drm_bridge_remove() */
>   	if (bridge->of_node && !lingering)
> -		drm_printf(p, "\tOF: %pOFfc\n", bridge->of_node);
> +		drm_printf_indent(p, 1, "OF: %pOFfc\n", bridge->of_node);
>   
> -	drm_printf(p, "\tops: [0x%x]", bridge->ops);
> +	drm_printf_indent(p, 1, "ops: [0x%x]", bridge->ops);
>   	if (bridge->ops & DRM_BRIDGE_OP_DETECT)
>   		drm_puts(p, " detect");
>   	if (bridge->ops & DRM_BRIDGE_OP_EDID)

