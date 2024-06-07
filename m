Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F262900064
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 12:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3975A10EBA3;
	Fri,  7 Jun 2024 10:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKqvR4Tw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986B810EBA3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717755058; x=1749291058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SU3UBhmVYi6spGH+EzPkhN73jNRy9n4Ms2rDnLgWzJg=;
 b=PKqvR4Tw8Ds2au+Kt84M+8zwvAPR7ERRhqULSLxLedaXDC0JdNuSwCtd
 l8wqBjwgGW0RbyEe1J7V2cdB4tEFjUfnaRyh3mgloqMey81V+ob8Xxhxh
 50108i/lyDexHv+CP0/r+5zacoNS9QKZw/uL3DDe2luvFjglfXcJiuJHa
 eKJhIRSeYqIe6V7H/jumiG1qcQkxSqEOi2cxRwAPfuaeA7hrALQVQsYh/
 gec71NNIhq1xJBrGWopyraV9bAvQxFcGOKT/4iozcd46JTwhu0FWQYh/p
 Djpd8zG4Vxyfx4gVp0SBxObXevv34dgCf17vHa1SzvM3ICtjrGOrUnSKm A==;
X-CSE-ConnectionGUID: +/FBZXeGSTGM+t8+gVpv+Q==
X-CSE-MsgGUID: ckhu5bHNS4K9+fRi8H2lVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="32014695"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="32014695"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:10:57 -0700
X-CSE-ConnectionGUID: FlaszzYoQdeipym6ZU9B4w==
X-CSE-MsgGUID: l51eqZqEQ0GOCWElWcNIeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38946734"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 03:10:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 03:10:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 03:10:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 03:10:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 03:10:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rs19GEjzt/0+8icyxQ3wK5xs0kbMXslEcn166sMJe1llhw3n1qw+25iELsUHj8rFHbX+eoV0EDWhq4D2zvG1RkiCZ0n6PsB7i3ds0G5RYl1plK5fbLzdrYGFB9Nwg/tq9459ocQ2nCzSuzySKaALJ8ivH5MnFrzRJMIIHYclrpHNpxdpa+LXFeKVlpOakmdhCwAJoZixrvu3im7FjzE9l1GwKPX3SUhtQSjSBK/bE1VcSXdpMtUL/WLGthMErm9DBWPOscVrpabj7F0ig7a8i8BmVxHp5N4TYANiyXUr0HH8Mpio/1jP8qjFvq6uuuW4M5VcbG5K1DcLz975KCOYVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SU3UBhmVYi6spGH+EzPkhN73jNRy9n4Ms2rDnLgWzJg=;
 b=Yr7FzqdcBd2XogOuv9BzEKT9cvv36tDDO/DktpmdvMzIcHdMkOxqxIPTn/mN+RqoOkNqwEBjyIm9VepXcxmWa0nH4jaRejCgHUVQd0VBChScySN7ig274PEy+l4AsS5b14vh/tTzoh31Y2nxVA/ozco6ShrAiP8bU/bjfGHO2h0XJS9xwXN6l69wg0bBODNUHPe6+vZ/5uCTjPWhZYUxa4yGhr1hQfxvn/kUDBggruFEsB/BLEm8A+tZGgn8AjlGIzXXhNED7u+HWw0kodKKHw/hVMwFFNX5iUb7fDsiY8QKXsiswiR9CIhL7f3boKgwVbGXXyPHQW8ZjcBHqPJmxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.31; Fri, 7 Jun 2024 10:10:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Fri, 7 Jun 2024
 10:10:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdk0u8esr/NUmTtgOTZLsbvrG6zzMAgAARSwCAATPkgIAAASGAgAABpwCAAABjgA==
Date: Fri, 7 Jun 2024 10:10:52 +0000
Message-ID: <4416b96b35f783d631838e53a49d8c44bc11efde.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
 <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <60a3055fc15403eb21cf003ff67c64a0bdebf7f6.camel@intel.com>
 <PH7PR11MB59817199FD450B51364D9DF8F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59817199FD450B51364D9DF8F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6257:EE_
x-ms-office365-filtering-correlation-id: 657ead53-a967-47ac-c016-08dc86da1cf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?V2hqeW1LMmlDVk9aSk0zaWwybFVIY0ZQYUpPdThZUEhrNzJPMXhzdXExaHRJ?=
 =?utf-8?B?dVFsOHpTcmszblhobXZIUTZCclNNWmxuU2lMdFRzV3VNcjV0WjgvNUxMWWM0?=
 =?utf-8?B?STdoeUl5QUtlajFCcjBscUNoNnFIR2R2M3lPNmRmWlZGaDVVaUVBRmNwRk5S?=
 =?utf-8?B?OTZWUU5jYTJEeWpEaWFTR2ZjcU5Gb1pqTmsvSFpQbFpYUy9HVUgzdnVmOFRT?=
 =?utf-8?B?Y1lxa1RrWFNDNW45QjNlcmlWcXh2SGVVdkJLa2YxR2VBOWpxZHI2Z0pRU2t2?=
 =?utf-8?B?a2pnaXdML3NJdEJZT0tMQjZuWE1qbkJ6ZW5HNHFqOC82TE1WQTBjVnVORkpJ?=
 =?utf-8?B?VDZiMzUrT2s3b2puZHBudHZaODNXbWlwWHNrZGxBNXc1NnhYUy9JbVJ1UEZh?=
 =?utf-8?B?ZWV4bGVBT2lvRzNMUE1Ec3NPUkVJcWdzRmhVcXNjelJCMzRIT2RlUk11OFRQ?=
 =?utf-8?B?eWhvejlTV1JZMkQ5c3kybHcxeUw2dnRxM0l6MkZkektQMi9tRE84QzBqUHNl?=
 =?utf-8?B?UWUzMk9ScTZvWUxBMWJBcVNZSFNYKzBURi9VK3VuV01aKzFxR3NWOVc0UzBC?=
 =?utf-8?B?QjlzV01ZeGEySUxiMGpjZEVxcnNMbW92WHlYMDFpSFFTVGJGNlBncFhFVkVw?=
 =?utf-8?B?bmJQRTJJUkhnOTVhMDgxRTRlNzFHNTltOGc1bDJVVUwza3R2Qit5TWtvdzVl?=
 =?utf-8?B?TkhUWTJRanVwcmdSd1VqU0liQmtMWFVFLzYxa3ZxTy93cVlXU3MvaEpDK3oz?=
 =?utf-8?B?VThBYXNYWDJLa3QvQ1M4RWdSS2VpTGlOVWJtUGloRER3blFwY3UyR2FYYWZ0?=
 =?utf-8?B?NzlTUkJqMFJPdlBLOWdKWTgzaW9iQU1WaFI0WkhuSHdETklwK1BaSlBqYzVj?=
 =?utf-8?B?eGNVek51QjU2ZjUxNE9IRFNkZG50NXhkUGd6Ni9tUzRvYWRTRi9qZ1dBT2NK?=
 =?utf-8?B?ZVpsMjk5OGVybThBZFFLU3ZVR3oxVmtnWmtnQ2lQemJrdTlYcDRlVnpDNW9K?=
 =?utf-8?B?YXdNSnBlbkZGNDZ0MFN5Y2E4ZklwbFY1b3VhaEg0OUo4dlBRMkVZZEtvN1lK?=
 =?utf-8?B?VGgwcElKUVFCTkpmbFpNZVlWN0RDMnViTUtPbFBoUVgxT2h4RzZjK21MZ3JD?=
 =?utf-8?B?L09LalZyeDFvTTRtbi9iVlhMdTM5bmk0RzlaeEQ5MXQrZ0FvOFFyU1A2TzNN?=
 =?utf-8?B?UXEvMy9FTWRmUWZIbWU0bEdNOTczZHZRVjlSdmVTVHZZL1R5WmFIYlZZd3A1?=
 =?utf-8?B?NzVvZEI1SU9USVh1eTNndUFNWitXSG9mQzFsN09YSGg3MHB3VTBTRm9WT3g0?=
 =?utf-8?B?WWJDeGJYQ3VuRk1wVGxEUlY0Z0wvV3JKbDNsVTByT1E3SkZzMWl5TXNXbElP?=
 =?utf-8?B?MldxTGxJUDE1MEI3KzJuSTltK25JSmxoc3NmcHRxOVBGYm1VTFhyT0NWMGR5?=
 =?utf-8?B?dDdVN0o5UlFZZllNQitHQ1Z4KzBGeFhqdEUveEs3U3FYbDV2dCszc3dBSGp2?=
 =?utf-8?B?T1JGSERHQklxVkh6RXZIUVBOLzNSQ28reTMxRlFsUFBROTFHWnRMMFNRNXVj?=
 =?utf-8?B?QlZmTFkzZitDYzNTRzZuRXNBRnEycmkvWTk1eDY3eGQyZzYvTmdnczlTaVdO?=
 =?utf-8?B?NlZ1ZEZQNjg4TnFNa2RxaTdyVDRSNFc2Qm5ibzVHWmRHOTNMSXZHV2doZnlz?=
 =?utf-8?B?eXFzc0pNU0dPTk5KNjRMT1I3bWkwdmU0ZGtxdDdwLzBoS3RGMVZyQVQxSXZN?=
 =?utf-8?B?RlhDd3F0bjkvMjBNWFRlV3ZxZGN5VWZrZkx6bEtCamN2WmJLd3RYZVR6TVdy?=
 =?utf-8?Q?NhnixOqZfWbvE3pLEErpHvQ8DuzFEElwBu+Gk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVpzMHJhYS95OG1iaDZaMVh6Kzc1Tms5bUhaM3kyVUozSUs4NlNSaVgvU3h4?=
 =?utf-8?B?ZkhQMDZhTC9VWUpwREN5YUR5aWU5VFV6Vy9TRkRXM1FqbzVmWklBV21xQmxD?=
 =?utf-8?B?MDJSMVB4dWpuVlQrSVpSanJzVk9US0crOHIwTDgrKzI1eTF0Z1Zkd1ArbHZE?=
 =?utf-8?B?RW4rQVBhNmZmMzQ0TUhuMXJMY1M2Z0h2VG9lY0FXRHFkcEVJa3pIVlFQd1lI?=
 =?utf-8?B?SEFHWHloakl2OW0xZERnUEkyWERrSjRNNHkzQkVUb1dvN1BST3lZemRBSEo0?=
 =?utf-8?B?K3V5R0EzVXYybGVqazNheXpNaUhtR2ZnMnlzTnpoeTRBbW9Rck1JSk10SU5E?=
 =?utf-8?B?MjI2YVNnOUM4RXJXRC8zczljUEtETHFPV0pRWVo4UEIwTFFIUW9vTmRzREFw?=
 =?utf-8?B?WWp6cXRyUDhqbWo0WFUxS3pLUG8zY1VpTWFCZDRGdzR2VkZjNC9hWWE5a1hU?=
 =?utf-8?B?UnhUN3V5bzQwd3RUN1lZems1ZUJCZjBlcndTVmYzS2hxbUs0Y28reDQzZGV5?=
 =?utf-8?B?R0NSdEJxRFV4cDFYK2xHVFRyakJoYmRad1dWS0JwTVZDS29jaytVUnM3SWlt?=
 =?utf-8?B?YkVtVmZ0OG8yc2dnQkFUL01zU1RtNlgxd2pzWEZwczdtSDI5RTdIYUFwK2k0?=
 =?utf-8?B?NDFkbEJ0MkFLNm9hTlFjMmllaWQvdXI2MHZuTmk2T3BOS1RGUCswTkRrbWVh?=
 =?utf-8?B?OWpEOS9XaFNKNkRQOGp5anJxc3R6R0dBME9ZakM5ci9rdElaK0dHdHRoT3la?=
 =?utf-8?B?VUlrQ0JTZnJ1aW1GZjdZeE5ORjdhNDk4bzRvZGROSldMb2VGMkxLTnljbElV?=
 =?utf-8?B?K3VtSmU3dzNGOG5heWFYQkZOTzZVU2FzQlM5VG5JOVJKZjE2aVdXU3l6akNp?=
 =?utf-8?B?WW1NT1h1MG1VZHJBZkVZeEE0MU92T0g1SldUNU4yQ2xwMEQ1MnYyVnFlcXVF?=
 =?utf-8?B?Ukkzc1RqOGpxRnJpeE5SUnpvc2JTaEJmNlZYcSsvNDVZM1pmMVJFT3FDeURy?=
 =?utf-8?B?WDlwMkZFdGhkNG5qdTR5emZvRGg2eENibVJuNVBQWHZzNk9XMGlUcTRobHVi?=
 =?utf-8?B?QU9HaTVaTXFUM0U2V0w0dHluaDNBWFpMRmRSdHBWWHNlSmthOENtV0ZsSkhF?=
 =?utf-8?B?ZWxJQVpzb2JyQldVUnEzdDhQSzlaVy9WZ0VUQTFDS0pHVXZucTFuM3NFMFZT?=
 =?utf-8?B?Q1VLdzIrZGk4T2E2ZVpVc3dVTmk2TkQwQVczbVlLelU2ZU9TbWsxYUJpZWN0?=
 =?utf-8?B?QzZLQWxXcnZuQmMrRFdjM0dnVHpkQTlteXdKZzAyMVJYLzRuOU1YTkdNdWI3?=
 =?utf-8?B?bHVaemVoc3UzenUwK0gyVThkcTd1aTdra3ljUC9JOEtyUmFpMW1DbU5EQWM2?=
 =?utf-8?B?K1c1UGQ4RExETHNIVTJXdUg3ZkkxYUZDNHR0RWc2MzFLK3NjVnU0UVVDU0ZM?=
 =?utf-8?B?QlZSemJyS2QyeWZVQm1BcGVQck1iNC9MMkYzMGhHVnMvU2FnbzVYV1NkWCs5?=
 =?utf-8?B?NlB1NWc3RG9LaGhzME16YXJwV2xQZ1NFc1VHdkhYTlJEczUyNFJNWFZpbGds?=
 =?utf-8?B?SmhidzFKTXovM2Z1dC9SR1JwWERJRUkreWtIcWZUQlpkVUJXR3krN2t1dUJR?=
 =?utf-8?B?aUw5L0MzNWlXZ2pET1FKSnV2RDdRV3lwSjhiVzUvRUtSdmd6Lzh3eGNpWTVa?=
 =?utf-8?B?UDgyY2VsbGlZclhxWkRjaWljZkhmRDRnSlc4RGJ1SGZOL3c0VkhYL2Q5OHdu?=
 =?utf-8?B?N3NnckFNbWhaZkdOSHYrMGZCZ2ZhbnJmZUUwWkF0R3dBMlZ4VzU3bU1XdHRy?=
 =?utf-8?B?VElJODlBWnZKVm9YcGRrNkZQNEU2ZUoyTmhPUXJFdmh4NlMxR2NPWHdiL0pU?=
 =?utf-8?B?cGtIRWcraGZZVUxQdFNWdXFKenhPaEpkM1FVa1JTdUN1UWlWUnQ5Mm9FK0RB?=
 =?utf-8?B?cU41TVJaczVTUUtyU1A3aFhmanpOdXljUkFucGtNaWEyRnVYcGpzbVc5K0w3?=
 =?utf-8?B?aTdXUUlKOUhJZitqQmJNSWJ0c2FRVm9qNWlwMmpEc1A5WmdEVkFHNlVHT2JX?=
 =?utf-8?B?UTRXOG9KSm9lOGt0WktBb1lmbUVKNzUza1F3NVRSeWVibjNaMExDZzFOa01S?=
 =?utf-8?B?WFhrb1JnM3I1V3oyU3ZYeDJoaERJMHJtSXM5d3g5ZDA5ZGkrck1NNVNNd3py?=
 =?utf-8?B?aWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F315ADE6971624FBF37DBECC0DF2795@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 657ead53-a967-47ac-c016-08dc86da1cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 10:10:52.6778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j3exlHepb99vS0UnNd1GzIken21U4kX0I4Ub8aAWYtKEbwXKM6D2E48BepfwVzPVuKgucTBLcJrZlc/2F2p2y+2/huU+A8LW2E0pofJ3hc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
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

T24gRnJpLCAyMDI0LTA2LTA3IGF0IDEwOjA5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBK
dW5lIDcsIDIwMjQgMzozNCBQTQ0KPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
Q2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjYgMTAvMjZdIGRybS9pOTE1L3BzcjogUHJpbnQgUGFuZWwgUmVwbGF5DQo+ID4g
c3RhdHVzIGluc3RlYWQNCj4gPiBvZiBmcmFtZSBsb2NrIHN0YXR1cw0KPiA+IA0KPiA+IE9uIEZy
aSwgMjAyNC0wNi0wNyBhdCAwOTo1OSArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4g
PiANCj4gPiA+IA0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiBG
cm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4g
U2VudDogVGh1cnNkYXksIEp1bmUgNiwgMjAyNCA5OjA4IFBNDQo+ID4gPiA+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+ID4gZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQo+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMTAvMjZdIGRybS9p
OTE1L3BzcjogUHJpbnQgUGFuZWwgUmVwbGF5DQo+ID4gPiA+IHN0YXR1cyBpbnN0ZWFkIG9mIGZy
YW1lIGxvY2sgc3RhdHVzDQo+ID4gPiA+IA0KPiA+ID4gPiBPbiBUaHUsIDIwMjQtMDYtMDYgYXQg
MTQ6MzUgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdyb3RlOg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiA+IEZy
b206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+
ID4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDUsIDIwMjQgMzo1NiBQTQ0KPiA+ID4gPiA+ID4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gPiA+IENjOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPiA+ID4g
PiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA+ID4gPiA+
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiBTdWJqZWN0OiBbUEFUQ0gg
djYgMTAvMjZdIGRybS9pOTE1L3BzcjogUHJpbnQgUGFuZWwgUmVwbGF5DQo+ID4gPiA+ID4gPiBz
dGF0dXMgaW5zdGVhZCBvZiBmcmFtZSBsb2NrIHN0YXR1cw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBDdXJyZW50bHkgUGFuZWwgUmVwbGF5IHN0YXR1cyBwcmludG91dCBpcyBwcmludGluZyBm
cmFtZQ0KPiA+ID4gPiA+ID4gbG9jaw0KPiA+ID4gPiA+ID4gc3RhdHVzLiBJdCBzaG91bGQgcHJp
bnQgUGFuZWwgUmVwbGF5IHN0YXR1cyBpbnN0ZWFkLiBQYW5lbA0KPiA+ID4gPiA+ID4gUmVwbGF5
IHN0YXR1cyByZWdpc3RlciBmaWVsZCBmb2xsb3dzIFBTUiBzdGF0dXMgcmVnaXN0ZXINCj4gPiA+
ID4gPiA+IGZpZWxkLg0KPiA+ID4gPiA+ID4gVXNlIGV4aXN0aW5nIFBTUiBjb2RlIGZvciB0aGF0
Lg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBGaXhlczogZWY3NWMyNWU4ZmVkICgiZHJtL2k5
MTUvcGFuZWxyZXBsYXk6IERlYnVnZnMgc3VwcG9ydA0KPiA+ID4gPiA+ID4gZm9yDQo+ID4gPiA+
ID4gPiBwYW5lbA0KPiA+ID4gPiA+ID4gcmVwbGF5IikNCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+
ID4gLS0tDQo+ID4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCAyMiArKysrKy0tLS0tLS0NCj4gPiA+ID4gPiA+IC0tLS0NCj4gPiA+ID4gPiA+IC0t
LS0NCj4gPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
ID4gPiBpbmRleCA3YmRhZTBkMGVhNDUuLjM1MzBlNWY0NDA5NiAxMDA2NDQNCj4gPiA+ID4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ID4gPiA+IEBAIC0zNTc5LDE2ICszNTc5LDkgQEAgc3RhdGljIGludA0KPiA+ID4gPiA+ID4gaTkx
NV9wc3Jfc2lua19zdGF0dXNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJyZXNlcnZlZCIsDQo+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJzaW5rIGludGVybmFs
IGVycm9yIiwNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gPiA+ID4gLcKg
wqDCoMKgwqDCoMKgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBwYW5lbF9yZXBsYXlfc3RhdHVz
W10gPSB7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsg
ZGV2aWNlIGZyYW1lIGlzIGxvY2tlZCB0byB0aGUgU291cmNlDQo+ID4gPiA+ID4gPiBkZXZpY2Ui
LA0KPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJTaW5rIGRldmlj
ZSBpcyBjb2FzdGluZywgdXNpbmcgdGhlIFZUb3RhbA0KPiA+ID4gPiA+ID4gdGFyZ2V0IiwNCj4g
PiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaXMg
Z292ZXJuaW5nIHRoZSBmcmFtZSByYXRlDQo+ID4gPiA+ID4gPiAoZnJhbWUNCj4gPiA+ID4gPiA+
IHJhdGUgdW5sb2NrIGlzIGdyYW50ZWQpIiwNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaW4gdGhlIHByb2Nlc3Mgb2YgcmUtbG9ja2luZw0K
PiA+ID4gPiA+ID4gd2l0aA0KPiA+ID4gPiA+ID4gdGhlIFNvdXJjZSBkZXZpY2UiLA0KPiA+ID4g
PiA+ID4gLcKgwqDCoMKgwqDCoMKgfTsNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25z
dCBjaGFyICpzdHI7DQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHJldDsNCj4gPiA+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBzdGF0dXMsIGVycm9yX3N0YXR1czsNCj4gPiA+ID4g
PiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBpZHg7DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBpZiAoIShDQU5fUFNSKGludGVsX2RwKSB8fA0KPiA+ID4gPiA+ID4gQ0FO
X1BBTkVMX1JFUExBWShpbnRlbF9kcCkpKQ0KPiA+ID4gPiA+ID4gew0KPiA+ID4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiUFNSL1BhbmVsLVJlcGxh
eQ0KPiA+ID4gPiA+ID4gVW5zdXBwb3J0ZWRcbiIpOw0KPiA+ID4gPiA+ID4gQEANCj4gPiA+ID4g
PiA+IC0zNjAyLDE2ICszNTk1LDExIEBAIHN0YXRpYyBpbnQNCj4gPiA+ID4gPiA+IGk5MTVfcHNy
X3Npbmtfc3RhdHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoHN0ciA9ICJ1bmtub3duIjsNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoGlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ID4gPiA+ID4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWR4ID0gKHN0YXR1cyAmIERQX1NJTktf
RlJBTUVfTE9DS0VEX01BU0spDQo+ID4gPiA+ID4gPiA+Pg0KPiA+ID4gPiA+ID4gRFBfU0lOS19G
UkFNRV9MT0NLRURfU0hJRlQ7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKGlkeCA8IEFSUkFZX1NJWkUocGFuZWxfcmVwbGF5X3N0YXR1cykpDQo+ID4gPiA+
ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ciA9
IHBhbmVsX3JlcGxheV9zdGF0dXNbaWR4XTsNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoH0g
ZWxzZSBpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkKSB7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWR4ID0gc3RhdHVzICYgRFBfUFNSX1NJTktfU1RBVEVfTUFT
SzsNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoaWR4IDwg
QVJSQVlfU0laRShzaW5rX3N0YXR1cykpDQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ciA9IHNpbmtfc3RhdHVzW2lkeF07DQo+ID4g
PiA+ID4gPiAtwqDCoMKgwqDCoMKgwqB9DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBzdGF0
dXMgJj0gRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oGlmIChzdGF0dXMgPCBBUlJBWV9TSVpFKHNpbmtfc3RhdHVzKSkNCj4gPiA+ID4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1tzdGF0dXNdOw0KPiA+
ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQ0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHN0ciA9ICJ1bmtub3duIjsNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBw
c3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKCkgaXMgcmV0dXJuaW5nIGZyYW1lLWxvY2tl
ZC0NCj4gPiA+ID4gPiBzdGF0dXMgZm9yIHBhbmVsIHJlcGxheSwgSXRzIGRpZmZlcmVudCBkcGNk
DQo+ID4gPiA+ID4gRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xPQ0tfU1RBVFVTLCBub3Qg
c2FtZSBsaWtlIHBzci4NCj4gPiA+ID4gDQo+ID4gPiA+IFBhbmVsIFJlcGxheSBTVEFUVVMgfj0g
UFNSIFNUQVRVUyBpZiB5b3UgbG9vayBhdCBkZXNjcmlwdGlvbiBvZg0KPiA+ID4gPiB0aGUNCj4g
PiA+ID4gcmVnaXN0ZXJzLiBGcmFtZSBsb2NrIHN0YXR1cyBpcyBjb21wbGV0ZWx5IGRpZmZlcmVu
dCB0aGluZy4gSQ0KPiA+ID4gPiBkb24ndA0KPiA+ID4gPiB1bmRlcnN0YW5kIHdoeSBwc3Igc2lu
ayBzdGF0dXMgZGVidWdmcyBpbnRlcmZhY2Ugc2hvdWxkIHByaW50DQo+ID4gPiA+IGZyYW1lDQo+
ID4gPiA+IGxvY2sgc3RhdHVzIGZvciBQYW5lbCBSZXBsYXk/DQo+ID4gPiANCj4gPiA+IElmIHdl
IGRvIG5vdCB3YW50IHRvIHByaW50DQo+ID4gRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xP
Q0tfU1RBVFVTDQo+ID4gPiB0aGUgcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cygpIG5l
ZWQgdG8gYmUgbW9kaWZpZWQuIERvIHlvdQ0KPiA+ID4gYWdyZWU/DQo+ID4gDQo+ID4gWWVzLCBh
bmQgdGhpcyB3aGF0IEknbSBkb2luZyBpbiB0aGlzIHBhdGNoPyBPciBjYW4geW91IGVsYWJvcmF0
ZSBhDQo+ID4gYml0IHdoYXQgZG8NCj4gPiB5b3UgbWVhbj8NCj4gDQo+IEkgZG8gbm90IHNlZSBh
bnkgY2hhbmdlIGluIHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoKSBpbiB0aGlzDQo+
IHBhdGNoLg0KPiBKdXN0IGFkZGluZyBiZWxvdyB0aGUgY29kZS1zbmlwcGV0IHdoZXJlIGJhc2Vk
IG9uDQo+IHBhbmVsX3JlcGxheV9lbmFibGVkIGZsYWcgb2Zmc2V0IGlzIGFzc2lnbmVkIHRvDQo+
IERQX1NJTktfREVWSUNFX1BSX0FORF9GUkFNRV9MT0NLX1NUQVRVUy4NCj4gDQo+IHN0YXRpYyBp
bnQgcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTggKnN0YXR1cywgdTgNCj4gKmVy
cm9yX3N0YXR1cykNCj4gew0KPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4
ID0gJmludGVsX2RwLT5hdXg7DQo+IMKgwqDCoMKgwqDCoMKgIGludCByZXQ7DQo+IMKgwqDCoMKg
wqDCoMKgIHVuc2lnbmVkIGludCBvZmZzZXQ7DQo+IA0KPiDCoMKgwqDCoMKgwqDCoCBvZmZzZXQg
PSBpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkID8NCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xPQ0tfU1RBVFVT
IDoNCj4gRFBfUFNSX1NUQVRVUzsNCj4gDQo+IMKgwqDCoMKgwqDCoMKgIHJldCA9IGRybV9kcF9k
cGNkX3JlYWRiKGF1eCwgb2Zmc2V0LCBzdGF0dXMpOw0KPiDCoMKgwqDCoMKgwqDCoCBpZiAocmV0
ICE9IDEpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Ow0KPiAu
Li4NCj4gLi4uDQo+IC4uLg0KPiANCg0KRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xPQ0tf
U1RBVFVTIGNvbnRhaW5zIHR3byBmaWVsZHMuICJTaW5rDQpEZXZpY2UgUGFuZWwgUmVwbGF5IFN0
YXR1cyIgYW5kICJTSU5LIEZSQU1FIExPQ0tFRCIuIEN1cnJlbnRseSB3ZSBhcmUNCnByaW50aW5n
IGxhdHRlci4gICAiU0lOSyBGUkFNRSBMT0NLRUQiIGlzIG5vdCBhY3R1YWxseSB0aGF0IG11Y2gN
CnJlbGF0ZWQgdG8gcHNyIHN0YXR1cyBkZWJ1Z2ZzIGludGVyZmFjZS4gVGhpcyBwYXRjaCBpcyBj
aGFuZ2luZyB0aGUNCmludGVyZmFjZSB0byBwcmludCBvdXQgIlNpbmsgRGV2aWNlIFBhbmVsIFJl
cGxheSBTdGF0dXMiLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gUmVnYXJkcywNCj4g
QW5pbWVzaA0KPiANCj4gPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4g
PiA+IA0KPiA+ID4gUmVnYXJkcywNCj4gPiA+IEFuaW1lc2gNCj4gPiA+ID4gDQo+ID4gPiA+IEJS
LA0KPiA+ID4gPiANCj4gPiA+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gPiA+IA0KPiA+ID4gPiA+
IA0KPiA+ID4gPiA+IFJlZ2FyZHMsDQo+ID4gPiA+ID4gQW5pbWVzaA0KPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiU2lu
ayAlcyBzdGF0dXM6IDB4JXggWyVzXVxuIiwNCj4gPiA+ID4gPiA+IHBzcl9tb2RlX3N0cihpbnRl
bF9kcCksIHN0YXR1cywgc3RyKTsNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gLS0NCj4gPiA+
ID4gPiA+IDIuMzQuMQ0KPiA+ID4gPiA+IA0KPiA+ID4gDQo+IA0KDQo=
