Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87778A1B50E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B778410E055;
	Fri, 24 Jan 2025 11:57:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NCUqNFCN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466DC10E002;
 Fri, 24 Jan 2025 11:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719874; x=1769255874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xAyCwMLC97MsImVi+++zW99PO1qmOuD35TlbC8jgeJ8=;
 b=NCUqNFCNGHJC6QUa/rbeSa6SGjUCV4UZ7B8ckH2wip50qGjS/re3kT8f
 Wbdi+0jJMgVtzn0ud/LrUvXDtniUZs4tbQDx0u54ibLoL3jp6Ckv6N92+
 h95rgC9YRcYMER9Dybg5BS2u46HDyz8GAKCXK0A1VP39c3IMG+mSVaPmw
 kXDp3Jmz96+RKBmLhDz/j8lf90Er8Dl0N5P/dsuXY7uiC7APGXkpjw8J3
 xv5uhmcYcAfGTKVEVm6zbXHtO1x1RtuLkFS5EWws4ImpI/CbfTh0aqpXE
 3ubIn8NYrlv5ADiHLldiOjRO+DxARgy+Sqd/YPMN2+1Q4ZNsjlLcy5Y2p w==;
X-CSE-ConnectionGUID: s4zAMPwLR+a9MeS48L4lEg==
X-CSE-MsgGUID: 7XkMhOSYSIyN10SNESqp1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38394383"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38394383"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:57:53 -0800
X-CSE-ConnectionGUID: tXMa0qHcQIOPBo9FQZ8o7Q==
X-CSE-MsgGUID: o6YnTIuQQJGEZIZP996bpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="108291999"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 03:57:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 03:57:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 03:57:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 03:57:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZy/quH70+S5kuqSRP9vA0JLojJ+4ySyM7kEEOBOzmDsjDDdeN2WLwaLkSp/CHXJKp4g954CUhlA+wwuyqa80Bn2e7kKZsQc90XKgFqPq83Dx9JGmS4Z5MzFV0UexluPmJzpaDl1P3TU7SQasFusSOi1Grp1Qtr+UnLlqfw/mgmqDYOlUrFD3vXenWa1pOa//VZ7xZy8asHOkr2V+9i45qfHeDyApwZH8hGepjLPWE6X3R8rJ9al+/NjciaOa/xGvC6c3cQ79zEJRVTSIfW92IGG0sanF0inTdWJDohYHYSTRkuiyR961CCcqtYkdu30aMfnVDHBSNkC6pzgcEK2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAyCwMLC97MsImVi+++zW99PO1qmOuD35TlbC8jgeJ8=;
 b=ckwH18bjVipWNBnPK0k3JqTNegFrAe1XJXzsiVZx7UvsTW8xxszIpjTNcYq79va9661bpG6f7y0EGFSdIvpCLQm9Nem5HrQbzPOUDEFC77Ln+yH+mGeicX7tKpIMHfxFkSx16v76JBMVGg/c6y/0Q7jzE9Fk8i837yYU1s/PlzaP9p5/qE1CB3pnRYlZpcBmynZTbbaXc/X3eUbYsW1Vr9rjer+xM4pB5efG+mc6bEtQxw0TYw9dJG4Y9AUGUzirVoWWkEh43yK1kYAP8ehFNSJihPzikfPCcK2u4+fn+F2Dc/tqivpEiY6FjBtdX/kfZNwuW2dltfh/5n9eAeXTXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BY1PR11MB8053.namprd11.prod.outlook.com (2603:10b6:a03:525::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Fri, 24 Jan
 2025 11:57:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 11:57:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Topic: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Index: AQHbbk6705aEA+Nk3UqP1hogPM9mTrMlzI0AgAAFBoA=
Date: Fri, 24 Jan 2025 11:57:10 +0000
Message-ID: <dbf6d20903c2ca8dbab3437b0af7ad414b14f99c.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-12-jouni.hogander@intel.com>
 <Z5N73tdHQqLOKhk7@intel.com>
In-Reply-To: <Z5N73tdHQqLOKhk7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BY1PR11MB8053:EE_
x-ms-office365-filtering-correlation-id: b8bb7c44-cf20-4f45-7873-08dd3c6e3c08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UTgwbnhmSVVFaEkzaDRiNXpHTUVJSjZtbW5QRmdNdVZzSkVUVHRnMlJoUFd0?=
 =?utf-8?B?ZzN5ck1hYnNyV2ZkRHFQdzJuV1F1ajN1M0FwOUNvS1pwNzRGUlgzSUNaaXow?=
 =?utf-8?B?SUdBZTZiUmZVYjg5Y3Y2bmtDNU5uUTFvWXEvZGZwMXoxSXRQcHU4NURYUkNP?=
 =?utf-8?B?MzJBV09KVDF4SlpBenBKb09wTTkrUk9VM0g2ZVdCZnYrQzU1bW03b0sraEVW?=
 =?utf-8?B?bEwxb2VHSmRCZHU5ZEpmaEo1RXZob21oUGxQZEd1aGFuZ1JITlV4K0NGbS9a?=
 =?utf-8?B?ZXg5bVIrRXBtVDIwWk80ZXIzZCtDR2IvQ0JTYnhIVWczVXJUejlJWjBDUzQ3?=
 =?utf-8?B?dmtQRjRPSEFFUGdUSHFiTWl0MDFISzRSd2tYbDhkN21pbWxuOHJYOHlNcnQr?=
 =?utf-8?B?UFR2ZHdaVC9QVVVIMXB0QnVqK05SZVdNUmZidnZ1Uk01S0h0bEVTRGl6ck1X?=
 =?utf-8?B?VzNwTDhYZEc4cFl3ejhxMVZ5Njc4M2JCLzdUSlZCZGtjWk5HbHVSWlRseGdp?=
 =?utf-8?B?L1BtMXhPSkJyTzZ6Wm1QZjBGTjBsQ01kbSt3UlQydDNEak5XNWlQQnlDck95?=
 =?utf-8?B?WGR0M01uZnhOdXZLMDJ5d2tqNUNFOFJDMk5xOXQwVmd4MHRlbUhzUzVqVFNn?=
 =?utf-8?B?MzBScE0rYlJqV0loU1o1Tytwb1ZrYVR2THE5dDR3TVdsOHM0UlpiOEtxd0RS?=
 =?utf-8?B?U3VPdjR3dWxkSzAxdVZTUzJ1VFM5YXJhc2tUWUNCOXc2WGdKdUJleVpid2xr?=
 =?utf-8?B?TVluc09MbWlWY292dWIxcFNZbTJ0YXYyUDEyZ0VJSUZycVQ2TExjT3dBRmNX?=
 =?utf-8?B?ajljZ3l4M3lkclg3MUpmN1BtdFIxNUp3cHRObFcxZ1NSN29XQVR6TWFMNXU4?=
 =?utf-8?B?V0cyMHgzUDlmeWFLbit6SlV6WmlUNWdNb2N3Zlo3OVF6N0V1ZXFtZU0wU1Vy?=
 =?utf-8?B?RGNTTktrRHZKd0tSQXFGNmt6aXo3R0NLakxHT1g3cWpYMC9udDdDMTQyK1hR?=
 =?utf-8?B?Z1MvQUoyVzlHdFgxcHZ5ZDRaTTJrOXhFNll5UTllY2NFUkdCT01ZbDhTVmY2?=
 =?utf-8?B?S1gyYmtiTlFJaUtKM0xsdzZTUk5qTkxFWkdtc3J3WnRSUnhyN1FlRzhlNFRN?=
 =?utf-8?B?RVRYVG5yamtSTDNTeFltTlpYRzBvU1l3MlZFWHEyeUtxSFJ6VUZocWF6RFBX?=
 =?utf-8?B?aThvbDBUV2lsR3MvN2Q0ZU5xVExRL1NjSzBJWmdqSDd2TlZoSnlpWW5nblpH?=
 =?utf-8?B?UEZXYkh2dHFITStuV1NrVkFWUjZWV1daUjJJNnVueEp3eGRyaWcvcTVMdy91?=
 =?utf-8?B?cmF5NjFJYjh2VVFiMVp0NVI3cC9TNFl4dGhSZnhWL2E4TDdmcjVsdnovWWQr?=
 =?utf-8?B?ZUduYnV6VjR5L0t1U25uWnhmakxpSWNaVlhQVzByQ1dtUWpQMUN4cE03ajZs?=
 =?utf-8?B?VW5iQ3ByVHd2ZUZ6VVp4V2RBSXI1bE5Ya0trQWdZRUN6SEh4K2RHYTQyaFRW?=
 =?utf-8?B?QlUvby96eEhXN3VpVXlEQnY1MmRvZ1dUN0cyV3JBbkRrUkpmME5ZSGRmOURC?=
 =?utf-8?B?VEhzck5rNDRVellWNEU5dVFjcDRhL0MvekVKdkh4S3o2M1RZVnU4TmVsL1Ey?=
 =?utf-8?B?NHZ2YlBVY0VPU1VreEhROWRjSGZVYTlXYnhtdTJKYUNhYjFWck5xVlQwOE4w?=
 =?utf-8?B?NDNWb3F5RWtoK1JkS3J3RnVBU3RBbld6Z04wNXJOZW1zTlpyUDUzcSsvTDZG?=
 =?utf-8?B?SzBzelZOSzRiSmZHampUM0JHUy9Hd1pKY3ZXdFI4TTMrTDBkcWpJRm5DR1gw?=
 =?utf-8?B?QkVXSEF4SDVCZzExRTlyNzFDK2h3bWE1YXhNR2Q2eFAvZE5pYmlWS1NQY1hs?=
 =?utf-8?B?VTREQ2tVbXJWSGlzdXNzelUrNVZHbFdTZC9UZXRydGw1OHVBQlNoVU5SdUlm?=
 =?utf-8?Q?SuXOm98R3uFFdt2W/icujp71BoRDPZYu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STdiRFlMRUpxN2JJUHdWeTFyQ1VDZlFDTldwS2lYZ3BDU3o3QnpHMy9OK2lq?=
 =?utf-8?B?cWpTeUt1R1hIQ1p3QU8waHgvNkpvbEhmR2tlcUdSdUtpLzd3WWNWOGtwWU5Q?=
 =?utf-8?B?NVNEU1VwWnFWQm1PY1BUTmZuQ2UvMnZub0tTcWgxc3p6ZDIrS2h0WXhjT1Mx?=
 =?utf-8?B?ZE10R3BlYW9WamRxSmRRVVRoVmJnTUhJcmhKdkNGV2hyTG1EdmtYNWRQRkVY?=
 =?utf-8?B?QU9xWDJkS3NCcW9Vbm4xV3hMZHRUWHZUMWdOY1BkSUxJMW45S2JTR2tmdkpw?=
 =?utf-8?B?U1Vqc0VQcFVBSzNtQWQyWGZzWGd3MmlxTUxsT25BRm10WGhWeDJ3QkFYVXd5?=
 =?utf-8?B?bC9WWlFseit4RTRRd3Y1b2ZYcFE1QlhRWXBaekNNeVBZQUJmY2YxdmExS25L?=
 =?utf-8?B?VjM0Q0ZwWEgyWXM1Y2VJWG9QeVdweUl3S29FaHBjV2owSlFMK01Ld1pmNXZx?=
 =?utf-8?B?R2VSNzlnNk94WHhWclFHb3B1TWpYNmpIWDhub24wVlROQ21jRDZzak5zaUJq?=
 =?utf-8?B?UzFkeVI1VXBHcHdKWm1PNlBOREFlSHArUGlJVVpLb0s4azg2Vzd1MWtzNStu?=
 =?utf-8?B?N0V2TmtWM3FmZmNXdnhPTHgvN3FCWEp6eS9jUmFmTGhMRURrWFRRR0RmdlBG?=
 =?utf-8?B?cHV5NzZhR0RDdVR4bVdzZTRCdGxPalpQMzVJemxsU0ZpTTEyU0NWTlRMWWNU?=
 =?utf-8?B?OUkzeUowdmhQeW1HbktVZSs4TlZzK0NvSWZjL1Byem5GdDlnV1doMEhNMEtJ?=
 =?utf-8?B?NVlBTm9nY3g0YVk5akd5ZVpIOHlublh4Q0wwSVIyd2pVVnRVUlVjck16WjFI?=
 =?utf-8?B?TFlXMUNiYzJCVi9DSGxjMlhDMkJrWFpqbEtCVzdCQlpON0NEMEZneENaSTFX?=
 =?utf-8?B?QWtDYmY4RDFuWFhwalBhZ3l4eHpxN0ZlU1VNUDlBYzV2MXlLNWxtdC8vblo2?=
 =?utf-8?B?L0hob2VtMWtmaEJSN2l4ZHVxTTRua29nWmphVVRlbjVXNDJGL0h5enc0bTE4?=
 =?utf-8?B?UHozVmJzbnBCREdOL1hLaWlHL3ZIOXhNSnVzdWlIVlc5RFB6bkcxeUgwNmpa?=
 =?utf-8?B?NzZIT0Yvdkl6Qkh6Z0Z4eWRzM3RvS05mVG1TcERkcTFsSTVUS2VZenhZT3Fx?=
 =?utf-8?B?cmYrSmNmNFJ3dFE0YXh5eWY4NXhpZTMrWDNQR1lXb1hNby84VUlJWGhzWmxk?=
 =?utf-8?B?Vjd4a1U4TUNWQ1QyZEdWakxTc1FjVjFMMkMvUVlRSk1ieXNZQU9VdDRFSW5i?=
 =?utf-8?B?Zlo0UVpveGJIZ1FqdUJISzZFOVdWWGhWTHQxTFNuQzN0Mm9zYm01MG1BaTZT?=
 =?utf-8?B?d05Sa0ZzZHlQUTAwMGlCZHcwbTE4NmJ0TC9GdlJNVVFJT2RsRG9WbUdxSEk3?=
 =?utf-8?B?SXZXM25xdTd3Wk81OXAyMUtGUjQvUmpncERld2E2S1ZsM0cvYUViN3plU2NE?=
 =?utf-8?B?Wm9HbktSc0dNZCtLeGpGa29lVVhwQmptSmVkV1RoUytqVWtlUFJyQTF2OEtL?=
 =?utf-8?B?VzhweXpidklMZlNadmZ4SGgzRHZTWXdoVndKaExBTTFQaUt5ZEhwdTRjeDgz?=
 =?utf-8?B?MExoQkZ6eVlKaURldkNsalIyVlJkTnZtWmxJU0ZDdnF3SUt3NnNSa1FycDhS?=
 =?utf-8?B?UDFlTVRPK0ZYUlpXYXlGcWtBN0E4K1FLdkM3TlBsdGFYSHhRS2l3ckRJU29M?=
 =?utf-8?B?bzlieTRzQTV0cWJlS1MyanNhbEh4SmNMckVjK1NuOXgrd1RzRHlLL3dXR0hL?=
 =?utf-8?B?S1Y2MWFPZVpmS0I4MEZBUjlhd1lWZlRXMWlidzVBOFJ5ZFE5ci8rQmUydDJJ?=
 =?utf-8?B?VnVsdVMxWkFFSHdUY1JSV1Vzd0NRVG1hNnJvamJNUkMxZU1sMFc3Z3JoZjdM?=
 =?utf-8?B?b3d3L3J1cUZ6VmsxWVA4bG5vTGhFNk9YdGJxYURGNnlDL2hhT09Tbm5wMkJx?=
 =?utf-8?B?VWhlWU15K1h1THhYSmtVSUlFNmF4QlMvMXRMTS9XbjBLS085amVPbzNVeDFF?=
 =?utf-8?B?LzlSQTNSRXhZM1J0LzdiOXJiL1ZqKys3RUU5ZnpGNXR2MzRDNkZBVHhBNFpI?=
 =?utf-8?B?NWZLdXJmRlJhV3JRSUFHVFRwb1c0OCt4VXdldUpQOEtLZ1ZHWnc1b1d1L0E1?=
 =?utf-8?B?WnJGWXhjd0trbGtxajltSnN4T29vYzBWQ2NZcUtoQ1FSWkx5Z3JMVTVWdVho?=
 =?utf-8?B?eDdOejVGbTBCMkRKWG9FcGFEMXpNUzVvL0l6OU1ZUzUzWVJGUE10bHJnSHZs?=
 =?utf-8?B?ajRJN1NyR1lqTEhGTW5nR3laRVdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B4C9986E71C1E34783D6074D7C9A8B39@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8bb7c44-cf20-4f45-7873-08dd3c6e3c08
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 11:57:10.7240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fYgLP8Nnt9IbmAOV0LMcUdnLqJE+JI7RbKIfZlxdbKr5p+7YyWEh99jToVCCRpOWBpwbek1hXcKwc8AVnsoIdSZh8kRiLJAD4NrakPaR8So=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8053
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDEzOjM5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIyUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBQSVBFRFNMIGlzIHJlYWRpbmcgYXMgMCB3aGVuIGluIFNSREVOVChQ
U1IxKSBvciBERUVQX1NMRUVQKFBTUjIpLg0KPiA+IE9uDQo+ID4gd2FrZS11cCBzY2FubGluZSBj
b3VudGluZyBzdGFydHMgZnJvbSB2Ymxhbmtfc3RhcnQgLSAxLiBXZSBkb24ndA0KPiA+IGtub3cg
aWYNCj4gPiB3YWtlLXVwIGlzIGFscmVhZHkgb25nb2luZyB3aGVuIGV2YXNpb24gc3RhcnRzLiBJ
biB3b3JzdCBjYXNlDQo+ID4gUElQRURTTCBjb3VsZA0KPiA+IHN0YXJ0IHJlYWRpbmcgdmFsaWQg
dmFsdWUgcmlnaHQgYWZ0ZXIgY2hlY2tpbmcgdGhlIHNjYW5saW5lLiBJbg0KPiA+IHRoaXMNCj4g
PiBzY2VuYXJpbyB3ZSB3b3VsZG4ndCBoYXZlIGVub3VnaCB0aW1lIHRvIHdyaXRlIGFsbCByZWdp
c3RlcnMuIFRvDQo+ID4gdGFja2xlDQo+ID4gdGhpcyBldmFkZSBzY2FubGluZSAwIGFzIHdlbGwu
IEFzIGEgZHJhd2JhY2sgd2UgaGF2ZSAxIGZyYW1lIGRlbGF5DQo+ID4gaW4gZmxpcA0KPiA+IHdo
ZW4gd2FraW5nIHVwLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDEyICsrKysrKysrKysrKw0KPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGluZGV4IGJiNzdkZWQ4YmY3MjYuLjkxNGYw
YmU0NDkxYzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gPiBAQCAtNTI4LDYgKzUyOCwxOCBAQCB2b2lkIGludGVsX2RzYl92YmxhbmtfZXZh
ZGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAlpbnQgbGF0
ZW5jeSA9IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0Y19zdGF0ZS0NCj4gPiA+aHcuYWRq
dXN0ZWRfbW9kZSwgMjApOw0KPiA+IMKgCWludCBzdGFydCwgZW5kOw0KPiA+IMKgDQo+ID4gKwkv
Kg0KPiA+ICsJICogUElQRURTTCBpcyByZWFkaW5nIGFzIDAgd2hlbiBpbiBTUkRFTlQoUFNSMSkg
b3INCj4gPiBERUVQX1NMRUVQKFBTUjIpLiBPbg0KPiA+ICsJICogd2FrZS11cCBzY2FubGluZSBj
b3VudGluZyBzdGFydHMgZnJvbSB2Ymxhbmtfc3RhcnQgLSAxLg0KPiA+IFdlIGRvbid0IGtub3cN
Cj4gPiArCSAqIGlmIHdha2UtdXAgaXMgYWxyZWFkeSBvbmdvaW5nIHdoZW4gZXZhc2lvbiBzdGFy
dHMuIEluDQo+ID4gd29yc3QgY2FzZQ0KPiA+ICsJICogUElQRURTTCBjb3VsZCBzdGFydCByZWFk
aW5nIHZhbGlkIHZhbHVlIHJpZ2h0IGFmdGVyDQo+ID4gY2hlY2tpbmcgdGhlDQo+ID4gKwkgKiBz
Y2FubGluZS4gSW4gdGhpcyBzY2VuYXJpbyB3ZSB3b3VsZG4ndCBoYXZlIGVub3VnaCB0aW1lDQo+
ID4gdG8gd3JpdGUgYWxsDQo+ID4gKwkgKiByZWdpc3RlcnMuIFRvIHRhY2tsZSB0aGlzIGV2YWRl
IHNjYW5saW5lIDAgYXMgd2VsbC4gQXMNCj4gPiBhIGRyYXdiYWNrIHdlDQo+ID4gKwkgKiBoYXZl
IDEgZnJhbWUgZGVsYXkgaW4gZmxpcCB3aGVuIHdha2luZyB1cC4NCj4gPiArCSAqLw0KPiA+ICsJ
aWYgKGNydGNfc3RhdGUtPmhhc19wc3IgJiYgIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkp
DQo+IA0KPiBXaGF0J3MgdGhlIGRlYWwgd2l0aCBwYW5lbCByZXBsYXkgaGVyZT8NCg0KSSBjb3Vs
ZG4ndCBzZWUgUElQRURTTCByZXR1cm5pbmcgMCB3aGVuIHVzaW5nIFBhbmVsIFJlcGxheS4gRXZl
biBvbg0Kc2FtZSBzZXR1cCB3aXRoIFBTUiBJIHNhdyBpdCwgYnV0IHdpdGggUFIgSSBjb3VsZG4n
dCBzZWUuDQoNCj4gDQo+ID4gKwkJaW50ZWxfZHNiX3dhaXRfc2NhbmxpbmVfb3V0KHN0YXRlLCBk
c2IsIDAsIDApOw0KPiANCj4gVGhpcyBuZWVkcyB0byBiZSBhIHJhdw0KPiBpbnRlbF9kc2JfZW1p
dF93YWl0X2RzbChkc2IsIERTQl9PUENPREVfV0FJVF9EU0xfT1VULCAwLCAwKQ0KPiBiZWNhdXNl
IHdlIG5lZWQgdG8gZXZhZGUgdGhlIGh3IHNjYW5saW5lIDAuIFdoYXQgdGhlIHNvZnR3YXJlDQo+
IHRoaW5rcyBpcyBzY2FubGluZSAwIGlzIGEgYml0IGRpZmZlcmVudCAoc2VlIHNjYW5saW5lX29m
ZnNldCkuDQoNCk9rLCBJIHdpbGwgY2hhbmdlIHRoaXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gPiArDQo+ID4gwqAJaWYgKHByZV9jb21taXRfaXNfdnJyX2FjdGl2ZShzdGF0
ZSwgY3J0YykpIHsNCj4gPiDCoAkJaW50IHZibGFua19kZWxheSA9DQo+ID4gaW50ZWxfdnJyX3Zi
bGFua19kZWxheShjcnRjX3N0YXRlKTsNCj4gPiDCoA0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiAN
Cg0K
