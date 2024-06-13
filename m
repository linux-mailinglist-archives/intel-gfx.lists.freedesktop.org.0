Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFA6906310
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 06:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F2110E048;
	Thu, 13 Jun 2024 04:24:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N38JB7IP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69BF10E048;
 Thu, 13 Jun 2024 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718252649; x=1749788649;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KqDuPaIxdDz1dhKmzdasW0LLH2E9h2TlX4IdnKmfVHU=;
 b=N38JB7IPMNFxHbPD10R1FqwBB/bjn34+Ht5CtA6FqHN2s8jV+tiKtRDA
 w4q7YnTly9PUvjP2Ha5Vq2Rq5cO4V/fp6ppWXjE529UJMXzTg7TgWcFzh
 pS5Dcor9O2f4V6s1UVaok172/S5EfL8Oub2CLgBL6lAJjOc/+ciholUGi
 Io2cepwiFkgNmLJ+k48cdbv3D5on79vpfN9hoRE1lv0/idAiac7aGDo1N
 CYK/ip2b2zlYEj1WGKnIzgxcF256Cd463g1WmPGYaclcJS60q6N5AG5d8
 D0GqJM6QkZKiEhLGxwr75oKJbuGya+PO5ABOSvw916xV0RaD8qfIkL/vR Q==;
X-CSE-ConnectionGUID: Q2PgE0bhQ6GPiWISuChXxw==
X-CSE-MsgGUID: IXldW875RxuHRuWr8Siwig==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="26163451"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="26163451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 21:24:04 -0700
X-CSE-ConnectionGUID: m0OuL189QOGuepxMpNWaXA==
X-CSE-MsgGUID: W0i6Ckz8QJSSqmfdKo+CgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39968762"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 21:24:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 21:24:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 21:24:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 21:24:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 21:24:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hN6dhsXLKyO3s0D1tmt9Zy72zlDIN8yT7A4VKisPo7nYJbhtGLesUjJwlRE1vHepc4H5bQzTSnSkG6uOYz5dfk0v0on//9aB1RuJVytxQbDIVmJyl4x7Zcr3+fLjMYp15Bx8HGVkakhPyJaZx28z26V10I4eylOt+uTx3EoD8wPzUXNwkt933VViEl+WibblzAJK7HUkEZB9MsarSPOW4F7bGILmOH9xwCpQwL7hKRw2xzTRWwZ6RXkzf3Dil5+cUYF/VgwniafAMhWuOqK5GQc6bWdhT6WIHXT9AacHR07mz64z1J3N6fZAiV5Uuaer5vjG3ECgVFJ/vp9iKQdi1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqDuPaIxdDz1dhKmzdasW0LLH2E9h2TlX4IdnKmfVHU=;
 b=BoEmjipNz+1BDHtsjia1N15fbJKkvTEC9CMs9RGJX9KilQL1AAgtb3qclJy0ga15WCUbngMODvLurVGny1H8wCfn+e0+VDuQLnh9ie+Z6TE9d5pDg80/z96RDyXQgb+VlA7seBvi2dqpci3uZwBDKMG1PvK1R0ah0BcPHRn0Z9wikAYZIvwkCDW6Z6aYEi/oUN2aLWZ+FC2q1/z/o3o0RS4TURgI6rgfXtI+S+mVUAePgW/qFbUlKMd1MDUPk8xJ9Jn5FKDeBBRMuK0ralrFrs9jH6u6K3DohJ+HL1rU7VY+CrPk4WvKfB4mumvqvy/vQCl0Lfb5b6098faUSWX5RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Thu, 13 Jun
 2024 04:24:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7633.036; Thu, 13 Jun 2024
 04:24:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx-trybot@lists.freedesktop.org"
 <intel-gfx-trybot@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: drm/i915/display: Update vtotal math to address 32b build
Thread-Topic: drm/i915/display: Update vtotal math to address 32b build
Thread-Index: AQHavUmDHzt7gafJiUahv4gCfEREPg==
Date: Thu, 13 Jun 2024 04:24:00 +0000
Message-ID: <SN7PR11MB675065A389CE304B78435DD1E3C12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240612083707.309659-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240612055203.270550-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240612055203.270550-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7896:EE_
x-ms-office365-filtering-correlation-id: 995d8a2e-5b33-4b6a-689c-08dc8b60a664
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230034|376008|1800799018|366010|38070700012;
x-microsoft-antispam-message-info: =?utf-8?B?M2lwUHlxa3A1eVdibFlGK2tXdFd1dUp6STF4aEc5cmpQRk8wZXRraVZsZkd0?=
 =?utf-8?B?empVYTlPTCtxdkRTN2RnUGtQaFU3dDJFZVFGaldnRkliQVh3N1dLNDZERzFW?=
 =?utf-8?B?enA1OEMySjdPMWdFNEpMd1F2d0VsRGRQL3JQYW8vSkJHc0ZnNE0zZS9qVDRO?=
 =?utf-8?B?TWp4cWZncUlUQ0FTaDZZcXhlTWEvN1RoSExCRCtkWTgvYTBVeHRyU1Rha2ZV?=
 =?utf-8?B?d0Y0RWc1Si91YkxrTzVTVTAzZDg4d21xK2ZqQ2l0b0Y3VXNuaHdQVUp0YlV4?=
 =?utf-8?B?QlFpejBBaHIxOWZYUFE2NXozQ0VUNlc0VjhPS3pCalVlcDJIY1A0NjFRdy82?=
 =?utf-8?B?ZnIxZTFRS1ppQ25zajdrTXVjOGVta2EwczQ1UkxSQmNvTjg3QVR6VFVFWlk4?=
 =?utf-8?B?b2tpOWlUNS9zTTVaVTIrRXhWeEhtZlVIQVg5cUpJMGhTeXh0T1RtK0FOL2tz?=
 =?utf-8?B?ZTVjcXNxZ0Nqd2g1cENBQXRZNnNaancxcTF5aGpjSWozK0tDZE8rcExYVlQ0?=
 =?utf-8?B?cWNFaG11LzRiV3VEVDFLZG9HMXNxR2Q4SHpuQkxKdGhXRnBjUlhkUm5scDRP?=
 =?utf-8?B?QnZaZ3hTcjZoNjUya1cxM3Y1RlJMYkJIekhJVkhPeWZHRUVWRUkyRS81Y25o?=
 =?utf-8?B?cUJGVEdUNVZVcWs2SU93dFp0NWtZSEVxNW9uRXFzU1BZSjBvZklodCs0Tmhp?=
 =?utf-8?B?WDZUeWRHK3grZXRNYVM1OHV0MTJ1MkFOZm9LeUpNLzc0c0NqQWtmWC96d3Rr?=
 =?utf-8?B?dCtoWStwejRQd2xhVVBJLzRhM2k4bXU1VnFNbXk2QzRqOWp4UU5sQWdBTEVP?=
 =?utf-8?B?UC9GMDRORDVEQVZ4UERwWWVjVWlmTkxwSnp6UmZZSFNKTkpXVDVZK05YT0hq?=
 =?utf-8?B?cTAweUNoOWJrWnVQa3VobjFjMktXZ05FdnRLV0RESWJ5QmdDNUFOaVhDcmJS?=
 =?utf-8?B?QkZ1TStrTEZsMTdtY2ZrTStYcDFzeisxV0VVdFFZNEdBQmo5WlZSVXlEUVN3?=
 =?utf-8?B?VW0wSGpXeTRrdEQ3bWlsd3Mrb3lRMEpRbzl1N0UzRmVYdWFXUk45Zlk4Q1NF?=
 =?utf-8?B?akZWNTVDSDE1T3hpRlFGbjZ0SkhIeml1VFZ5NjJWdW5GMzh1U2lqSEJBeFVa?=
 =?utf-8?B?b2g0OHphVjdjcUNyZ2pnbXYvWFpqMU9ZNjJSSjRiZyszRzR4bHArTllacFpU?=
 =?utf-8?B?RVNnc3h6OFZHcnNLaURBRWFMNjQ0bUNQeU4wQU9IaVd4UEwwb0pvbXZJSFc1?=
 =?utf-8?B?bWN6WFBLWUxOeXJ4dnVsZE10Z1JTWGhoK2Uwb3JTTUUvM1FORUtSOFRGV0lT?=
 =?utf-8?B?ODN2eUF2S050bnovMlp6SHJWVm5ldy9CM3hsbEtDaDRXQkx3WGZSSUZ5VDVG?=
 =?utf-8?B?ZWxCcWM0akkyNTgzemg1NTBwNHB4ZWJWM2lNQ0psRW9meC96ZWpiWEEySHR0?=
 =?utf-8?B?dG4rdFlESHVoYUFicWUyU0I0T3V6b1BNcHB5TncxaDVvbGY4T1REc3FlWTZl?=
 =?utf-8?B?T21RaWJ6TU54S0RISzVCUldOWGl4c0dLRmZlYXRqOTRHL0hrdnpXaUZkTThx?=
 =?utf-8?B?RW5meWgrL0dkbTBrMFoxcUs0cXlUQUFJS21XL2RPc3MrZGlnWE95RW1uY1Jt?=
 =?utf-8?B?dGkzSmhkWkV3OFZYdDhiMStWRVd6SlNVMzRzcnhjaCt1V3V1STFlblUrMUto?=
 =?utf-8?B?T0VQODUvcGFZOXVkVkl0VTdiemhhQ3JJWHphWTBEYWk4ZW9wNU0zLzR2Lzky?=
 =?utf-8?B?d2VnTjBGZjhyUVRaVEpYaXl4KzROa0VIZGVobUF4QXNFZDlyS3Y1N0VJUWJx?=
 =?utf-8?Q?eUpk2kwrBKkT9+oBCw8HCS5ioD8JAsN3v7tMg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010)(38070700012); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUJ5U2JTTm9NVkRjb0pDa0p5MGJXUGZKSWI0bElLNVpKN2x2NmZPdk44bmFW?=
 =?utf-8?B?cllXamxqNDlVd25iMXFndWV5OUZYVlV3UzhCUEkreGsydHNIWlNjTHJobFFm?=
 =?utf-8?B?UHY3Mk0vRkFiRmg3MXJsMTltVFJ3L0oyMTdkWTduWnlFK0x3L1JDS2J1Ym1q?=
 =?utf-8?B?czNYTncvTWZRbHhSbHpyQTNxUm5FclRXbkhIbGJuT2U1ZVRLOVVwMUFza3NI?=
 =?utf-8?B?bmtxbTRPdG5rcG5MVlh1Zk1iTkVVa1RGZ0ptNlNrbFoyU3NFMkkxcWNndWJQ?=
 =?utf-8?B?TVFEdGg4NUVBV3ArUnJWWDI1bUpqZ0pnSEhFTFIxL2NqdFZjdWpZS1ZoRzho?=
 =?utf-8?B?VW5YU09UbFdvS0FtRWxVQTE2SlgxY2JHRHlBVGZHbzh3RE9TOFdtSUN4NG9p?=
 =?utf-8?B?LytyWUwrZjd5WG1SU1NDK0RaM3Q5YVRZTkVhcVhTK2NjL1l6UnFjQVpRZWlN?=
 =?utf-8?B?b3lnSllYM0FIQzJGeUF2OWxpd1YxN25tV2RwNnRFREFURFYxbUN2NHFzd0Js?=
 =?utf-8?B?NGI5Um55eWlvL25lNjdIZC9OYm5RRVl0dEVFNnNlREJlMjJlRGZuTFZNczFZ?=
 =?utf-8?B?NUs2dzA3TVM3UVJmRTR0VkYzRC9Mb3kyT01yKzB6bXphaURTem9KTnE5bHhX?=
 =?utf-8?B?STFQRzgzVjdpcFNmVEJ4dUpVWDhzbXlRcWxQdkkxTWdSNi9iNFd6YVUzNUNQ?=
 =?utf-8?B?QXBJQjJ2MXdaZWN6S1BFQ0lIdVJ6ZksrMGZoQU1WZjF3MTQ5QTcyNFJoS2Z6?=
 =?utf-8?B?R2c0alhvRjF6a2JqQ21JcnN4NmludXBEclBnYkhTNnVMcTVBc0g2NXAwbUxj?=
 =?utf-8?B?T3pLNERrK05WY2RqZDIrYWZhdVBkVk5sVzc1ZVA2b3NOQjZqS3hBQmdCL3FW?=
 =?utf-8?B?aGtyNlIzeTQrbTJSMWZrSzRQQWE1cUEwM1pVVDNxWXdtNG9nQUxzOVhmRHo1?=
 =?utf-8?B?QzRyYnA0b0RYWnlvbkVrQ0JXaEs5RnhBWDQzUnhTSmUvZHh3VUY3SG5BUUtW?=
 =?utf-8?B?RkxoN0xsNTFzSWR0MndONFdmR01kUkdkNHUyY1VMWGtGR3dhUWZzVnpaMzly?=
 =?utf-8?B?dk5HeE1zWlZkNGtiVCttbndrdmpRR1UxVEZyQU9RTWZTYWRxclFtZmxwb1VY?=
 =?utf-8?B?QVA4MFFmTXRGaU9LWWY1YnBROUJFYlE3Zk04TW4rbUNtdG9IMk42L1Y1OWg3?=
 =?utf-8?B?dCtSdVEzWU05Q1AxN0xOVC82QWlHRWVRY3lRZStOZENrVHN4YzhkTk1HVjh6?=
 =?utf-8?B?T2dMaEt1dlRWQXpyd2NUN3VBbk9KcGtoZFN5QUlDUU15OUpleTUrbXpiL1F0?=
 =?utf-8?B?dUhpcGlORGQyQy9za2NLZWc0Y1ltb3pZS050d2RFY1BINnRGSEFFTDBnNFIr?=
 =?utf-8?B?cVVqSDBDWkg4cEExaFNyeDNrZ3AzTUI0TWUxa1EzdlcvdCtxV1JKbXg2UXFz?=
 =?utf-8?B?VUkxd2l5ZWFCcnk1T3lWUno0TnQyUjRCNmlpbmNTaUVtZU9neGw1SDg1WVZ5?=
 =?utf-8?B?Z1IrQlM0V2p4QkI0TnhNNGs0WktUVzRwYldIc3hGTUtPVGhBL2d2N0FkRkVr?=
 =?utf-8?B?aHgvVWhHMWtNTUdlRklkMUZSOWQ5dTB1VkY5U0tnWFprYmZBNHFLK21tTTAw?=
 =?utf-8?B?bmh4QVpselJmUGlYUlhRenhNR1IxWG9nVHk3RHFWU1hJOHRNVG9Obnh5Nyt0?=
 =?utf-8?B?RzcxdVNFNy94bmwvSEpmZzVGaG5yd3BCRkVlTHNoV2xtKys5Ny9QVHE0YzUx?=
 =?utf-8?B?UHBPQjloQUVpK0dkYWtQK0RSdkZyU012bVF0QnVKbWVMZU5jaUkxS09SdnVp?=
 =?utf-8?B?M3poSUw3WmRIQjRYQXBrVUZwdVZmK2VsanhzaVRoVHBLZVFCV1F5OGxhMUxn?=
 =?utf-8?B?MjdWOWpybVlZSUh2STY0OVcwcGVXKytjanF1QXNEQkxCb3Z6aEhjbFJqd1hX?=
 =?utf-8?B?T1NtN1RXQnlTRFZxOVNwYkIvOStzRUNGZndpMm8xbzZrWDV4a2hISnJXalNn?=
 =?utf-8?B?NlRPQlhnZE4zMFdBOXBTeXRjQnNkMEJVQWxjUHA1SWUxcUYyM1RBbTJoRWF1?=
 =?utf-8?B?Zll5djRUcWhKL1dmNUlWYTViNm9IaXZFclZwRzl3QW5EZ3huRTU3QkgwUXl6?=
 =?utf-8?Q?FhJemVpVUWgdCPRbFWXQPREuA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 995d8a2e-5b33-4b6a-689c-08dc8b60a664
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2024 04:24:00.4322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sSga5ggGN9JZl+wtS4DIRZtiGfu7JYQ25b7mXO2k2cxVAAN/g3tFTj22toQ331JO9Rt+vcZb1JxsD0pahC39hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
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

VGhhbmtzIGZvciBwYXRjaGVzIGFuZCByZXZpZXdzDQpQdXNoZWQgdG8gZHJtLWludGVsLW5leHQN
Cg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiBJbnRlbC1nZngtdHJ5Ym90IDxpbnRlbC1nZngtdHJ5Ym90LWJvdW5jZXNAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPiBPbg0KPiBCZWhhbGYgT2YgTWl0dWwgR29sYW5pDQo+IFNlbnQ6
IFdlZG5lc2RheSwgSnVuZSAxMiwgMjAyNCAyOjA3IFBNDQo+IFRvOiBpbnRlbC1nZngtdHJ5Ym90
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBTdWJqZWN0OiBkcm0vaTkxNS9kaXNwbGF5OiBVcGRhdGUgdnRvdGFsIG1hdGggdG8gYWRkcmVz
cyAzMmIgYnVpbGQNCj4gDQo+IEZpeCB2dG90YWwgZGl2aXNpb24gY2FsY3VsYXRpb24gd2hpY2gg
d29ya3MgZm9yIDMyYiBzeXN0ZW1zLg0KPiANCj4gRml4ZXM6IDE2NzZlY2QzMDNhYyAoImRybS9p
OTE1OiBDb21wdXRlIENNUlIgYW5kIGNhbGN1bGF0ZSB2dG90YWwiKQ0KPiBDYzogTWl0dWwgR29s
YW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiBDYzogQW5raXQg
TmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBDYzogU3VyYWogS2FuZHBh
bCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVs
a3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDMgKystDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gaW5kZXggMDVmNjdkYzlkOThkLi4xZTM3MzgzZTE0
ZTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBA
QCAtMTQ5LDcgKzE0OSw4IEBAIGNtcnJfZ2V0X3Z0b3RhbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gYm9vbCB2aWRlb19tb2RlX3JlcXVpcmVkKQ0KPiANCj4gIAljcnRj
X3N0YXRlLT5jbXJyLmNtcnJfbiA9DQo+ICAJCWRlc2lyZWRfcmVmcmVzaF9yYXRlICogYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19odG90YWwgKg0KPiBtdWx0aXBsaWVyX247DQo+IC0JdnRvdGFsID0gKGFk
anVzdGVkX21vZGUtPmNydGNfY2xvY2sgKiAxMDAwICogbXVsdGlwbGllcl9uKSAvDQo+IGNydGNf
c3RhdGUtPmNtcnIuY21ycl9uOw0KPiArCXZ0b3RhbCA9IERJVl9ST1VORF9VUF9VTEwoYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19jbG9jayAqIDEwMDAgKg0KPiBtdWx0aXBsaWVyX24sDQo+ICsJCQkJICBj
cnRjX3N0YXRlLT5jbXJyLmNtcnJfbik7DQo+ICAJYWRqdXN0ZWRfcGl4ZWxfcmF0ZSA9IGFkanVz
dGVkX21vZGUtPmNydGNfY2xvY2sgKiAxMDAwICoNCj4gbXVsdGlwbGllcl9tOw0KPiAgCWNydGNf
c3RhdGUtPmNtcnIuY21ycl9tID0gZG9fZGl2KGFkanVzdGVkX3BpeGVsX3JhdGUsIGNydGNfc3Rh
dGUtDQo+ID5jbXJyLmNtcnJfbik7DQo+IA0K
