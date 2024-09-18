Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1D97B79A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 08:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958CB10E52D;
	Wed, 18 Sep 2024 06:07:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfnqAJ20";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8F810E52D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 06:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726639629; x=1758175629;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=igaSChQ9mgkO5J79qn1F/O+4GU3SrruoDUCPW6uNj64=;
 b=gfnqAJ20nFQYtnIuYoeb8tz2+wulIrOl1UGCh8ybpKDV3LicbGirAZYX
 R6YDsF1JAUEFgAKLGwQi8WcBCmZC/4R6VQsr+ch+gkIFLnOved/oAfb0T
 UBPaOl7ySBACc8LuB7XliCW1/wyy0UniuNSc8whFYDRrRSBZT19pxHHBY
 jP0JvneTtJLoBfaxV+ZfnZC1vYgWgqzOcZgIhZpJlD81NKRMwUQG+eZ0p
 1GZhglK5e3OjPCekdRDJGgjpvLgxLEpN8lm0XV7f7rzRNvr69cq5/OK8C
 eWkrUQdVpvgK2mRf6F53eIU3ydIh5QWQ3Nt/FDH0DHGZY4oSEmTSHU3yk g==;
X-CSE-ConnectionGUID: mNwZtLm3Q3G2bOIkCqU/7w==
X-CSE-MsgGUID: HbtK715yR0GEXhlVqzZBpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25628508"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25628508"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:07:09 -0700
X-CSE-ConnectionGUID: AprlCkF0Q1yv9/+jJ7PxCA==
X-CSE-MsgGUID: hkf2lyBHTyaHlvqt/wXXWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="74270168"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 23:07:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 23:07:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 23:07:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 23:07:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fW+aKMIXAGyHR8zT8riyufF7YzTQNDHMENimPv0wYHQvrgN1Bpm0HwjnRXbkYzyAG9B0W4H8xLaNGbVlZXl4I/Lup9u62yswkXR6coxJ4Uwetwh+IH08ExcWo7MCNi34RM6Br5m1QIUHg5CzpIPv14hffEvcF4zxnU0NOJXxT6dEN5+xfcZXOsFSjhxOHtFZbGtaTjPl0UxeTi0IvZ50cUiWgCpf2F9J/uGr8hTZDsCxAVj5WYq/tpJYhrokRHCrLxv/aQF9TLdg414D/G+w0d8iTGlONq7G2VfS1fxEEFHacihiOGX1RelVk+6TadwspoaEviFECaFhrvI3P1jmNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igaSChQ9mgkO5J79qn1F/O+4GU3SrruoDUCPW6uNj64=;
 b=x8BPK93ghhzIjoRIrHDPcLCuSJxvmYwtOmHdrzIa8kIqcxSk5dUVYXb3UTVTVxdh7PvmqbK44ddMaw7W8Ly7S//WdeAmxsfAgEQKgxha25olshLtaCe634wccgOXlsaHnyBsVhURcXGOSC/G0Gv+Z2x+mrfXqkIq63+KK/EWPUFqsrAkahJLnlwKZgcRDvMzb/WKy7wFKbwh1PV7Ha4lvkT2iVD4N7NryoM/a8ZyzHW4ZhUCRhn61smzzlk2+W4AOLcIwm6dPsQ/EGi4nal9QVqfnJgmZR2BeVGuPGMmlKWzn1OQwoxvARnZmS1AzhOSGJluzK9VtBZ89C1E5yVxyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.24; Wed, 18 Sep 2024 06:07:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 06:07:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/2] drm/i915/display: Prevent DC6 while vblank is
 enabled for Panel Replay
Thread-Topic: [PATCH v3 2/2] drm/i915/display: Prevent DC6 while vblank is
 enabled for Panel Replay
Thread-Index: AQHbCMv86i2Pul+9REidMM17L59xgLJcSXSAgADG6wA=
Date: Wed, 18 Sep 2024 06:07:05 +0000
Message-ID: <e920bbb9f035c11caa99d586e85105bbad0f1f4f.camel@intel.com>
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
 <20240917063600.3086259-3-jouni.hogander@intel.com>
 <ZunHK2ZvWyRECCxF@intel.com>
In-Reply-To: <ZunHK2ZvWyRECCxF@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5211:EE_
x-ms-office365-filtering-correlation-id: cd2da6ed-9539-42cc-1c92-08dcd7a81f56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aUVQUnVNWlo4b0JQMVBidVFvRWlhYWJvS2hEK29XZytJKzY1QmtZbGs2SGd3?=
 =?utf-8?B?N0RVYzdxcTNZSG1ObHBRcnNaNHhLWXlBM1RBeUIzRlNTZWQxZW5uWitJazNq?=
 =?utf-8?B?QWkyTlNmR2dsZjNRNkJLZnQ2SDNQSEVsOHpRZk9wTzZxTFhxa1RhUWZMdGYw?=
 =?utf-8?B?VDRvWVM3ZnVwS1RKVE1SOVdOaTNYQzRrVGZQd05LWCt3UnZ1Q2FnRkN0dWVJ?=
 =?utf-8?B?OHRHNE80amNuMGI5bTI4WjFXamlkVGV3K3haM1Y1NEI1bTJKdFI1TG9JZU5K?=
 =?utf-8?B?MFpnSmdzeHNLNnh6eGlvN1BYZTUybU8zU3pRRDdHYzJ6elJDMU5oSlNnV0c5?=
 =?utf-8?B?VmI0VXFpSkpWKzA3L0lFOVg1ckdJb2Z2bUwzWVJ5YjBYa3VhNnlEa0prSG5s?=
 =?utf-8?B?dXkzNFF1WTAvd2ZkQkxOTDRwMEw3OXE2VnVneUpxcDVjKzFTTkVudEpudUs3?=
 =?utf-8?B?c1FDVGFuL1NkNmRiS01NdlV5aTh5QmJDTnQvT1pabEliRjVPSWVkMEdoWHdC?=
 =?utf-8?B?TE5Sc3VTUjh3NlJ2U3hjd3RjYk9oTDNjUmVCdkJWT3FIMWlHS0tDU3FsQ0VM?=
 =?utf-8?B?bFdTWWZQR3J5Y3NJb3RqYzRlbG1QczVpU1kvS0xFYXg3RlRjbVhIMWI1YS9p?=
 =?utf-8?B?eE16OWR5RU12VkNZTEZnVUcyWDh4bnNoU1V2aXdPRFRvUVZ0dUk5TkozZEEx?=
 =?utf-8?B?S0NYYXQ0dVZIdXlnVmgxZ0RmZVNYTWpkeUFpMktWblNJdTRQbnhWZ1BzMGpr?=
 =?utf-8?B?SW5ZMDZ0NWFRMHRkUHhVeVhuL2ZHWXZRTU01N25ReW9GbEhmZVBkTlRiUWJm?=
 =?utf-8?B?N0wrMG93ZDRLTkJSNFNjM2NvT2lxR0dLUjVkblMzTW44UW5TaWZhK0djRDMr?=
 =?utf-8?B?V0VnYWp1ZHlyZURRUys3MFVhNCtvR283SUZza0wyQnhtMTYyV2RoUGdvQk9T?=
 =?utf-8?B?V0J0YmhZOUEraUdZM29nUU1paVlIa3FNdW5EZWREdGFYSFg1Q2dyM1VyK0xG?=
 =?utf-8?B?VXJKb1dpc3R3cUk2RU9nWlFycTdjR0ZsRjJhNjRpbDJqWmQ3SVYreWF5QXFN?=
 =?utf-8?B?U1ZvWjA0VU9GQ2hlaWVwUkpyZ0JJcnBwMWUzM21uZVBZTnphd3A0RUczYkRD?=
 =?utf-8?B?blQ1NG11T2NIcCt2emVPcWJkUTJOQnkzaEphQlhobm44NGtNN0o0Zm9EdTN6?=
 =?utf-8?B?Y1libHJzcHhSUE5TZ0RuZ0NJMWNJdlYwdzJ3SGg2ZWNQY2F3TE9zNmZzcFd2?=
 =?utf-8?B?bUtiN3I2R242OFI2WG1wZjhHUnp0d2FlOTdQb1c1aDcrbzRZQUJkOHpvMm85?=
 =?utf-8?B?RzdZMGpuTG9uN205UHJNVERMUjdITzQrUjdVWmNweDBidzUwRXNKZ25BVkpK?=
 =?utf-8?B?WkVLeDB1VVFBRDQ3RDJGZ2NsRFpLVFllTVpncE95S1VveWhHQ0daZU9FMWlC?=
 =?utf-8?B?SjVPcHlwa2F0SE5XdEFad1ROLy9uajA0UklNZVhZNVNaTkZDZDdxa2pFd08v?=
 =?utf-8?B?WWhoanliOTRBT3F2VWV3ZXlHb3I1QmFmWnYvQnNlSitzOFM4VjdYUjhIRllH?=
 =?utf-8?B?RGRuSjhRMFk4Y3JnY2ZucitVZXI4NlRzNmFYalZ0ajdwS05JZm0wNkRLZERj?=
 =?utf-8?B?QTdDbnlVSEtuUWo0WEN2NnZVbFV0UCttTzJMaWliYW8xZHVyNEdYeW8yRVU4?=
 =?utf-8?B?Zi83bW9FZHEzSTRoYk5wcDYyRkQvVmMvOWx3bWtzN3NtRkliQXpPS08rWVEw?=
 =?utf-8?B?elZwRnRLeFNJZnVtcUsvSUs2WXp3Nk5aaEpzSERNNXYwRnAxR3daempsUXc1?=
 =?utf-8?B?eU5JUGtmWEVDOFlJNjhndz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk5lZm1aaTQ4Wjg0SW8xSTdYQi91VFplek8zOXU3dlRRRUl0ei9ITGpRS0M0?=
 =?utf-8?B?UTIzdC9uY09JRUVXV1Y2NFhBdmpLSGYzb1AwRmlsNXIxUURIcHVFRjMzNk1Z?=
 =?utf-8?B?RXVzT1J0OW1TNW9MMjlQSXVDc3F0bU5vWXhxM0xqWWJxelZtbE81UldHbU10?=
 =?utf-8?B?S01NNWRXL0NvOE5zb3J5NWZjdzRrRnpHN3AxblJHNjNtRlVzVlN6ZmovdXZL?=
 =?utf-8?B?aW1XNXVCVllBUXAydmpnZlJuRGIyRkFWS0M3MlNVTCtSdW91WEdNQUNKRlBF?=
 =?utf-8?B?R2dDL3BtN3pBSWw3eWMxQlFOME5SOWdqYXc5RVBaVUJrai83WWdTbFJaUUla?=
 =?utf-8?B?MUtGd1VHYzZmQmxTM1l4dU14NThUTU8rbmZoQXdCc01BYUtYUCtHM0I3SjVy?=
 =?utf-8?B?dEdYSmFaVXE4akMzQ05qK3FkTmM2d0hqTXhDVWxyWmJsaGF3M05PcjYyQ1BX?=
 =?utf-8?B?TlRnSFZPYUxjc2owejlpVDhEUGFPN2hpTTBnYWdtdi80WWFGb0FaaTJib09p?=
 =?utf-8?B?bmdhdGFGTVppNlQ0aXBWR0dUdnl0Q3hYRnRoNlJwSDlQbi9oeEk4MklHbHp1?=
 =?utf-8?B?OHorbUY3Q0MyK1ZkZmx0enV4VWhocTBUbml5NWg2SkVMWjRsbzlKb2x5WS9y?=
 =?utf-8?B?TjhISkZxTjYvN1Q4clN0Z09xUDltZkkxbldubjBOSDlxMVZPNWxhNjFOYkl2?=
 =?utf-8?B?VEcyVU43TkhzS0Y5cmVwbG91dE1TVFRnZGFUKzFiSUNWbUtmNld1MGZsNllu?=
 =?utf-8?B?RmpxSlRJRjZGNW9kVnVUMHRnUFlhbnhFK1BvbE54UWlTTW9GVVJsaUVvNjlh?=
 =?utf-8?B?ZndrOUwxYTB2bVFwY2pkY1hHTTdlQVNJUHNRV2NIclgvTnpXa2lmRVVTTUk4?=
 =?utf-8?B?ZWZSYkFiOS8vZVBSQ2d2bzlIS1V0RG1ZaUlzNDk3bnhOKzMvME1qOFZsQVcr?=
 =?utf-8?B?UktRbTFrODN6eXRtOHpZMXYyUkgwUW44a2k3aVpKUDlwcjJES2ptdHZzY0Zz?=
 =?utf-8?B?STd3SW5GSVFwSVhjY25nQ3gzRDdvc2FFUDc3WVIzdTU2N0ZJSE5nYUEyMXZD?=
 =?utf-8?B?UDZTSFlzZ1VaMldaZTZLTFVGSnpPcUVrS0d2a0sxQWRHNTNKR0F0R2xOc2o4?=
 =?utf-8?B?RDkvMlYrM3N6dWZMVmg2OUhtYjRlR25jZjRMbE9pRHNmWlZLNkt6cWZqOFky?=
 =?utf-8?B?eXI0cW84aENTM2xOTDNzUkZxdFE2aVFiY005TUtFK1Urd3R0RHVEYWFybytB?=
 =?utf-8?B?RTA4MjZlQ1AwQkkybkNiYmFJcThEOE9QK3l3Sk5kWjgwQytVK2ZtSkdHNXV6?=
 =?utf-8?B?a1JOamhidGR6OFpmRmNremlmVHYyaitDZ3ErQVNPT29CRk94Q1FmQmI4ZEoy?=
 =?utf-8?B?Z2hGTGdlQnAwakY1VTFyMU5IbmF1ZTFJL0tYMUpUN2FCOWVQUEt6NGEyRDRQ?=
 =?utf-8?B?ME90ZTNyMktIVTFoUHhEeW9IdnNGaUJYdE1aTDBnZ1lkUHZPL3ZWSm44VzJs?=
 =?utf-8?B?ZSs3Wm5GZEVDV2VkYUVaMVdPRUsvR1R3WlFTZXJEd3pVa2NuSGNyYTBZTTlH?=
 =?utf-8?B?aGl5VmVpcnQ3cS8vbjViNjJEYy9qejJBVWVEd0wxTW0ycmlRc0EzUkNEUUZR?=
 =?utf-8?B?cDcybUZrODBuSUJ0Qk9DL2pUb2NqcWFJNWMwQ1VzUzVNVldXRitIbjAyMHhU?=
 =?utf-8?B?aEFlTUhCdzRleWJTSk1EaDREQTVMVXo2Wlg0MmUzVlBrOUt1bUdidnN5UEYx?=
 =?utf-8?B?cGdxN0pzand4UEE3bjMvNVVLK1E5cEZQTjUwWDcrWDRxdTZjRHJ5bEVIVmhY?=
 =?utf-8?B?eDBYSU5VdnhuUFJtMk9EUVFtNDNHZWMrSk9iY1FQZDFJeHMrbUVnWGZJaFFq?=
 =?utf-8?B?bHZHSVdVenhCZEpvcnNWU2FibjZpMTNlVUZ6TFpIZktIMjh4aEw4TWQ2Q1Jx?=
 =?utf-8?B?TFhzUnNNSFNuQm01L0FSbm51UlErTXdxVWVMaSt4aVJuREZidkZtK2c1QWky?=
 =?utf-8?B?dVNzNXJMSTZkRnpTdXJWZEQrWW9FNElteTVCYndLTDdOUmQ3c1FuNlRLRE40?=
 =?utf-8?B?cUxJZzcyd2NxQlRQTDg1MTAxK0ZTQW5vRnQ0YStZZ05abUNTZ2cvNzBHaGEv?=
 =?utf-8?B?TmllaGkwSXlIcFkzRXJrYmlHVVp2SDlWY0pJdmRaWDlBY3ViV3NiRjljLzlz?=
 =?utf-8?B?VVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EC824FA243632F4F919C299567D4E353@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2da6ed-9539-42cc-1c92-08dcd7a81f56
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 06:07:05.9523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R8ES1S8MHzEzEnkzMDFiQMZXnsoGsFBgC/cSrzfHDVmdPzXs8coyStOwxczBs8ejDlIMWPpDaFBxj8Fe+++oii6E3t+3omezHCvnT+KsuQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
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

T24gVHVlLCAyMDI0LTA5LTE3IGF0IDIxOjE1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgU2VwIDE3LCAyMDI0IGF0IDA5OjM2OjAwQU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBuZWVkIHRvIGJsb2NrIERDNiBlbnRyeSBpbiBjYXNlIG9mIFBh
bmVsIFJlcGxheSBhcyBlbmFibGluZyBWQkkNCj4gPiBkb2Vzbid0DQo+ID4gcHJldmVudCBEQzYg
aW4gY2FzZSBvZiBQYW5lbCBSZXBsYXkuIFRoaXMgY2F1c2VzIHByb2JsZW1zIGlmIHVzZXItDQo+
ID4gc3BhY2UgaXMNCj4gPiBwb2xsaW5nIGZvciB2YmxhbmsgZXZlbnRzLg0KPiA+IA0KPiA+IEZp
eCB0aGlzIGJ5IHNldHRpbmcgdGFyZ2V0IERDIHN0YXRlIGFzIERDX1NUQVRFX0VOX1VQVE9fREM1
IHdoZW4NCj4gPiBib3RoDQo+ID4gc291cmNlIGFuZCBzaW5rIGFyZSBzdXBwb3J0aW5nIGVEUCBQ
YW5lbCBSZXBsYXkgYW5kIFZCSSBpcyBlbmFibGVkLg0KPiA+IA0KPiA+IHYyOg0KPiA+IMKgIC0g
dXNlIFJFQURfT05DRSBpbiBpbnRlbF9kaXNwbGF5X3ZibGFua193b3JrDQo+ID4gwqAgLSB1c2Ug
RENfU1RBVEVfRElTQUJMRSBpbnN0ZWFkIG9mIERDX1NUQVRFX0VOX1VQVE9fREM2DQo+ID4gwqAg
LSB1c2UgaW50ZWxfY3J0Yy0+YmxvY2tfZGM2X25lZWRlZA0KPiA+IA0KPiA+IENsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvMjI5Ng0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfY29yZS5oIHzCoCAyICsrDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9pcnEuY8KgIHwgMjgNCj4gPiArKysrKysrKysrKysrKysrKysrDQo+ID4gwqAyIGZp
bGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGluZGV4
IDBhNzExMTE0ZmYyYjQuLjA3MDdiYzIwNDc5MzEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiBAQCAtNDU3
LDYgKzQ1Nyw4IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoC8qIEZvciBpOTE1Z20vaTk0NWdtIHZibGFuayBpcnEgd29ya2Fyb3Vu
ZCAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTggdmJsYW5rX2VuYWJs
ZWQ7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHdv
cmtfc3RydWN0IHZibGFua193b3JrOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHUzMiBkZV9pcnFfbWFza1tJOTE1X01BWF9QSVBFU107DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgcGlwZXN0YXRfaXJxX21hc2tbSTkxNV9NQVhfUElQ
RVNdOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGlycTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gPiBpbmRleCA4ZjEz
ZjE0OGM3M2UzLi40YmRjNjdlMWJhYTMxIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+IEBAIC0xMzYxLDE2ICsx
MzYxLDM4IEBAIHN0YXRpYyBib29sIGdlbjExX2RzaV9jb25maWd1cmVfdGUoc3RydWN0DQo+ID4g
aW50ZWxfY3J0YyAqaW50ZWxfY3J0YywNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7
DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArc3RhdGljIHZvaWQgaW50ZWxfZGlzcGxheV92Ymxhbmtf
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+ID4gK3sNCj4gPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmRpc3BsYXkpLA0KPiA+IGly
cS52Ymxhbmtfd29yayk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgdTgg
dmJsYW5rX2VuYWJsZWQgPSBSRUFEX09OQ0UoZGlzcGxheS0+aXJxLnZibGFua19lbmFibGVkKTsN
Cj4gDQo+IENvdWxkIGJlIGEgYm9vbCBzaW5jZSB5b3UgZG9uJ3QgdXNlIHRoZSBudW1lcmljIHZh
bHVlIGZvciBhbnl0aGluZy4NCj4gT3IgY291bGQganVzdCBub3QgaGF2ZSBhIGxvY2FsIHZhcmlh
YmxlIHNpbmNlIHlvdSBvbmx5IHVzZSBpdCBvbmNlDQo+IGFueXdheS4NCg0KSSB3aWxsIGNoYW5n
ZSB0aGlzLg0KPiANCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiArwqDCoMKgwqDC
oMKgwqAgKiBOT1RFOiBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUgaXMg
dXNlZA0KPiA+IG9ubHkgYnkgUFNSDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogY29kZSBmb3IgREMz
Q08gaGFuZGxpbmcuIERDM0NPIHRhcmdldCBzdGF0ZSBpcyBjdXJyZW50bHkNCj4gPiBkaXNhYmxl
ZCBpbg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIFBTUiBjb2RlLiBJZiBEQzNDTyBpcyB0YWtlbiBp
bnRvIHVzZSB3ZSBuZWVkIHRha2UgdGhhdA0KPiA+IGludG8gYWNjb3VudA0KPiA+ICvCoMKgwqDC
oMKgwqDCoCAqIGhlcmUgYXMgd2VsbC4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDC
oMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoaTkxNSwN
Cj4gPiB2YmxhbmtfZW5hYmxlZCA/IERDX1NUQVRFX0RJU0FCTEUgOg0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRENfU1RBVEVfRU5fVVBUT19EQw0KPiA+IDYpOw0K
PiA+ICt9DQo+ID4gKw0KPiA+IMKgaW50IGJkd19lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0
YyAqX2NydGMpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhfY3J0Yyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNydGMtDQo+ID4gPmJhc2UuZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZW51bSBwaXBlIHBp
cGUgPSBjcnRjLT5waXBlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIGlycWZs
YWdzOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHU4IGJsb2NrX2RjNl9uZWVkZWQgPSBSRUFEX09OQ0Uo
Y3J0Yy0+YmxvY2tfZGM2X25lZWRlZCk7DQo+IA0KPiBUaGlzIGRvZXNuJ3QgcmVhbGx5IG5lZWQg
dGhlIHJlYWQgb25jZSBkYW5jZSBJTU8gc2luY2UgdGhpcw0KPiB3aWxsIG5ldmVyIGNoYW5nZSBi
ZXR3ZWVuIHZibGFuayBvbi9vZmYuDQo+IA0KPiBGZWVscyBsaWtlIHRoZSBpbnRyb2R1Y3Rpb24g
b2YgdGhhdCBmbGFnIHNob3VsZCBhbHNvIGJlIHBhcnQgb2YNCj4gdGhpcyBwYXRjaCwgYW5kIHRo
aXMgc2hvdWxkIGJlIHRoZSBmaXJzdCBwYXRjaCwgYW5kIHRoZSBzZWNvbmQNCj4gcGF0Y2ggd291
bGQgdGhlbiBqdXN0IGZpZ3VyZSBvdXQgd2hlbiB0byBzZXQgc2FpZCBmbGFnLg0KDQpPaywgSSB3
aWxsIGNoYW5nZSB0aGlzLg0KPiANCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZ2Vu
MTFfZHNpX2NvbmZpZ3VyZV90ZShjcnRjLCB0cnVlKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGRp
c3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCsrID09IDAgJiYgYmxvY2tfZGM2X25lZWRlZCkNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2NoZWR1bGVfd29yaygmZGlzcGxheS0+
aXJxLnZibGFua193b3JrKTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9ja19p
cnFzYXZlKCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgYmR3X2VuYWJsZV9waXBlX2lycShkZXZfcHJpdiwgcGlwZSwgR0VOOF9QSVBFX1ZCTEFOSyk7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5p
cnFfbG9jaywgaXJxZmxhZ3MpOw0KPiA+IEBAIC0xNDM2LDYgKzE0NTgsNyBAQCB2b2lkIGlsa19k
aXNhYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMNCj4gPiAqY3J0YykNCj4gPiDCoHZvaWQgYmR3
X2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqX2NydGMpDQo+ID4gwqB7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhfY3J0
Yyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGNydGMpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtDQo+ID4gPmJhc2UuZGV2KTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+IMKgwqDC
oMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KPiA+IEBAIC0xNDQ2LDYgKzE0Njks
OSBAQCB2b2lkIGJkd19kaXNhYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMNCj4gPiAqX2NydGMp
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+aXJxX2xv
Y2ssIGlycWZsYWdzKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYmR3X2Rpc2FibGVfcGlwZV9pcnEo
ZGV2X3ByaXYsIHBpcGUsIEdFTjhfUElQRV9WQkxBTkspOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKC0tZGlzcGxheS0+aXJxLnZibGFua19lbmFibGVk
ID09IDApDQo+IA0KPiBUaGlzIG9uZSBzZWVtcyB0byBiZSBtaXNzaW5nIHRoZSBibG9ja19kYzZf
bmVlZGVkIGNoZWNrLg0KDQpZZXMsIHRoYXQgd2FzIGxlZnQgb3V0IGFzIGluIHZlcnNpb24gMiBi
bG9ja19kYzZfbmVlZGVkIHdhcyByZWZlcmVuY2UNCmNvdW50LiBJIHdpbGwgYWRkIGl0Lg0KDQo+
IA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzY2hlZHVsZV93b3JrKCZkaXNw
bGF5LT5pcnEudmJsYW5rX3dvcmspOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqB2b2lkIHZsdl9k
aXNwbGF5X2lycV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4g
QEAgLTE4NzEsNCArMTg5Nyw2IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9pcnFfaW5pdChzdHJ1Y3QN
Cj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaTkxNS0+ZGlzcGxheS5pcnEuZGlzcGxheV9pcnFzX2VuYWJsZWQgPSBmYWxzZTsN
Cj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9ob3RwbHVnX2lycV9pbml0KGk5MTUp
Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBJTklUX1dPUksoJmk5MTUtPmRpc3BsYXkuaXJx
LnZibGFua193b3JrLA0KPiA+IGludGVsX2Rpc3BsYXlfdmJsYW5rX3dvcmspOw0KPiANCj4gSSdk
IHByb2JhYmx5IGFsc28gdG9zcyBpbiBhIGZsdXNoX3dvcmsoKSBhdCB0aGUgZW5kIG9mDQo+IGlu
dGVsX3ZibGFua19vZmYoKSB0byBtYWtlIHN1cmUgdGhlIHdvcmsgZG9lc24ndCBsaW5nZXINCj4g
cGFzdCBpdHMgZHVlIGRhdGUuDQoNCk9rLCBJIHdpbGwgYWRkIHRoYXQuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCj4gDQoNCg==
