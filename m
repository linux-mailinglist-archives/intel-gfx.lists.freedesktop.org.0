Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NBtBbPa3WnukAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 08:12:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD453F5DF0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 08:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD2710E145;
	Tue, 14 Apr 2026 06:12:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNK4NOOT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E33A10E145;
 Tue, 14 Apr 2026 06:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776147119; x=1807683119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGRsSR3cO3JuBuLoJ5MVdRHK7upq10Qj8rXG5rgZiRM=;
 b=cNK4NOOT+VetJZucsyyxZcEZupzShhVEhpEvCAq5k5gGvCysF4RTlltq
 rF8+FQ/ysehzS012HQGrFWCHph5pmzhBiQZNGFjWtNrq5fNiBwAaN3lTG
 e6BkgoYgyaE0dNBmLlYfkEpT6B10Rx0AK0JSZUGMnY9Jmvmu1qtlJ9Q37
 7tEmZ7oGQMNoyswe7C/2rNKs/LUZs/OMoj3L4tD2HqWrPeZvbU/Lqe3fh
 +kkYhyfmObBa6zWyzse2+E9CoLB2nTm9mrrko9A7gT8EtrN2VMJ9ytmyY
 9ROgCVqCQDklGqEYJm79VFqT4WVm+D+YusGVGDgthlknI3ZA9R1ihdwsW g==;
X-CSE-ConnectionGUID: 1VcaYfwlT9+d/2NnqCebOg==
X-CSE-MsgGUID: orVDynDaRr+sVdC8zcb4RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80684953"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="80684953"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 23:11:59 -0700
X-CSE-ConnectionGUID: g2DTBVsRTkKen5/ucPLYiw==
X-CSE-MsgGUID: /oT6wG16Rb2Zy0G/aRFCpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225265285"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 23:12:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 23:11:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 23:11:58 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 23:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lcI+itKkqhjaoECCGGZCJrX5m3DXRYkgceeE49CtYDX57Qml/zsOSrJOHUgMP0JX3gMVe0EsYENMW+A4RZ5Xl1O38Z5SQRVebyfCCK1bkGgXTMSwe7qaVdcv9j8YQGUJvZ8JnHl8eCHqcnctJkgkvwymNGWaUCgfHWsTuCfAHpRI3llJ8jkNjhgdgykWGUwHhStU1dSx8RQYxdsIRoZ/Se4b4b95XKwF3LQj55BHRFn5VMBUUMLDDJYyuDD6BmocaGQEwmqB4wwUKNpqLzOJ3rIs8c/yExoYS8F0RJ5a8XXciOUpN6VFmG9nUyesafiGm28HYro3f2uR9N8PbUZ5MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vGRsSR3cO3JuBuLoJ5MVdRHK7upq10Qj8rXG5rgZiRM=;
 b=IABgBOPsH4tO+HY5TYDD1jtudjc2ZNCLrY5AIi2lSYlTZLyyhy0m1nU67Ga+wN8pprX+BuvD7VFFSWuWn46GiOu/GXDYrRf9UeKPaP6k0PdZKX0DZgKKGYSWzpe69wqKA1SVFHP49CbHw4WXVzS0oDQZtFbhLP+tfQZZ6sEnbDb3i13gW1LSf4/TG/TSbNorDjlqgr46bPuGAQ++6tD8WsNi98ju1WV3Aok0cJ/J3Pxnuu/MUubPxoT8BnfI/0TF9W47l3ySoD7Tzj5FiM0knQXa+UgElcuh9s8Y0Nunu4li6IglFSVM0t5y4YzO9WrBMSH+djBB8+jJ3bCO/a4oaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4878.namprd11.prod.outlook.com
 (2603:10b6:a03:2d8::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 06:11:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Tue, 14 Apr 2026
 06:11:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Werner Sembach <wse@tuxedocomputers.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Topic: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Index: AQHcpTuT0NOVFGlMC0KzEq9i+0VeAbXd6seAgAA/tAA=
Date: Tue, 14 Apr 2026 06:11:56 +0000
Message-ID: <DM3PPF208195D8D28441301A99E1A8600CAE3252@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
 <38ba8502-4a9b-4881-9bac-7833ef755d77@tuxedocomputers.com>
In-Reply-To: <38ba8502-4a9b-4881-9bac-7833ef755d77@tuxedocomputers.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4878:EE_
x-ms-office365-filtering-correlation-id: 82105144-62b9-4f5f-1bf5-08de99ecbb1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 8JdczmWvfx+e8+b7lohCNX3LkKqm4RNtkmcO83N3D6hu9FO6mrscagwPnl6izNdCJfxTHM9ouqjEDuF6dq/RmObbtKo0jBfESD8bCxY8ZU0lGyswLzAzI4Xn8taiTV4Cv2kjdb2svsLULw4mp7AH8nxIbbKB9zTY7NOXECngWl4h3E5pXjEWBDAzfKX4D7FzEVsTkdtJsVDRVOAN0bMQ0fnEIRk18jJKHyLtpB7tZWWwkLXbWUqbaAmmxSeH/qPsxfW9UFoAStkoQjfCOmzd3GIM1XAa07duM9B9W3K0aPBrAbzt2WQQLK+05hW5w2f5p5ljPuhBybXuvNjsoNl0kGXNhSBOXgNey+iujfzl8CLYqQ+ZxfoOv8Po3M/je1THuLfCFyy26CPIAPMg9D98D3VYerqyzgtlJdni/yEEUM2jmzTd30dqIuPpxG6Pk3764ROZKQgZ8m/GH/s9xbmCdpoeOtTcjK8xSqdrAjDvR6kAoJcs8IXe2lEFY7ZTL3EKDgpDyOlF0I1rCmN6+yfDW/X5BkpC5QWBRJ/KRf+FmZGz1a5v6MnVUZmjy1iOQ2Qx038PSW1OiNgaFisJ7H25JzP1khI7KlCLUNdId87E/gwwAdBCa8XwBcmnNHHdiJuPZuVy3E9xFvwLvtxn57U87KP0l/eFuExX54J7EhTOKFQyVm1d8Vifss54bABsrd7khlw2nxGXI8sJEdBahdhtsIvoihzLfy20puAoawXXF9dGCyGG3ouLXxXbe38pbV2x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0R1VnVTREVVR2FlRTJDMk5uZGRhNU81MXFSL3E1blFsOCs0bEtXeVVsRDZX?=
 =?utf-8?B?NjlUM2tyRDBIZUV3RW5KUjlINVJTeW0zdU1aMWl3dmc2aGU1cXc3aStlOGlx?=
 =?utf-8?B?S1VySVZtM2xBYXh1d0JCZzVNQ3dZejZ4aXlEZFRXTDVKejF4MFQxRE1ZbjNk?=
 =?utf-8?B?dXBwMnNWR0dDd2NFTzFFekY5ZU96MDZ6Ryt1M0ROVnFCdmhNYVE0djZRVzA0?=
 =?utf-8?B?MWkxWFE5dHRlVVNlbXhNVkliU3FPbDFPTmo0dEExN0VqbUpVY243dEhIU2xz?=
 =?utf-8?B?QytEczJoTjJDd3hEc202QUZMNjVTTWxEcitjUklUK05UbityTTUrVE5sc045?=
 =?utf-8?B?N1p5TGJ4dUhNTHhBRzdQeC9mN3NIVm5BVjVkN3RoNVZlc0hGZldhYVBhSWNR?=
 =?utf-8?B?VUlYWEFBTC9Rc3NPOWVuamxHQ211bUhQQmpNVjF6aUY5a3FMTytYcFJvYVYx?=
 =?utf-8?B?SC9FN2RTUmVwek5hWUxpek44dllQQVMzQzdJZDVZdDdpNW9xdmF6d0thT0Ew?=
 =?utf-8?B?b2Y3SXlCQ1JiVVV6TUZTcFhnYWk1TkF0Z29vTHFJWGV6cHVBRnptMTJQU0pr?=
 =?utf-8?B?Vzh2UDhQWXpaMHl6ZWRodXpteG5ReGxYeGxWUHM4V2pnbndCaTlPMFVEeVJB?=
 =?utf-8?B?N2R2M3FEVkNSL1UvU3JxUWU5K2xZQkI4dVk0UWlNRHBCTjNLcWc1clcvK2hX?=
 =?utf-8?B?S1M0SDJhMEtKWnhMSnh5djVkR3g1NE8rLzV2SE94eW1sMlhGT09UL2dxdXFw?=
 =?utf-8?B?ODZIL2lRV0srOE9MUkt2QkpXYzJRWStROTJmc0k0Z0EzbVR5eWRFRi9OOTk0?=
 =?utf-8?B?aTRqVFZpMndKclkxb0RxUTcrK05nTEFTbitmVk0zSVg0azhydHlzMkphWDc0?=
 =?utf-8?B?c2RHVVp6ZzNGMkxUYUF3WHZrZ2NYNkRGby8vQW9tODRhM0sxSjFYejFvempD?=
 =?utf-8?B?UWRZUUlpNklxWGhzZkV5bDlzbTNxVHJjZnoxbTk5dndCb1ZJWTA0TUZUMS9V?=
 =?utf-8?B?NXJkSmxWd292TFkxeVNvMC9VWEpVN3FUQWY0dmJYa0VVcFFjU3BBWTMyQlIz?=
 =?utf-8?B?ZHhBcHpDYmVJT1RTbEVkS1dsdGkxUWtULy9Dcy9kZWNVai9rV3B5bHVibXV4?=
 =?utf-8?B?SFVXTWtCTjFzdWxhbFFRUlNVZnpYbWp5WmtORjJOUnU2YVplSURvclk3Tk92?=
 =?utf-8?B?V3Z0Q3BxblVuYUY1eHJ3L0ZmL1VXWGNranQ2bkxBUjBFeFpJeUZFODN1dW53?=
 =?utf-8?B?TDFGRUNLemJWbHI5NTNDUDBBUVdUU29sR3pnTWFxUTE2MW0xQmVocTlFMzBi?=
 =?utf-8?B?VEkrNnlKVFgwb2xqSEIrbDBQZHhZWkZBMkNtdVdJNmZBclg5ZUVNc3NGZXFr?=
 =?utf-8?B?UEc3SEdGdVBFSGdRNnkzTUxzejlJYVFieW95ckwySEJJYVoxRlJYenlJSEta?=
 =?utf-8?B?SlV5YlNOaThnSzRvdDVCd2RVbjJKckp6RU1zRHNLcmdMWWJVRHV6TEh0dWk0?=
 =?utf-8?B?dGxVbkdVTkF0K0hWYjZBeGdlbm9Lc1A5UWdsNXZpb2tVQWlrYjMrUUxFaUR3?=
 =?utf-8?B?SVNtVkJJc2Z5QmQrNDBHRno2TWdCSkx2RGRsV01YY0p1aXhyZmh0dnZzTjJw?=
 =?utf-8?B?OC80c2RPQ0h2RVZGNU9LQ1dsbkRkSSszS0gxdHU3ZjQ5Uk15bG0vYzVYNHB3?=
 =?utf-8?B?L09RNzJmbVNPT0c2VDdKUFJYUXFweXVVS0pQTDlzL0k4WCtvNkdzakhCQS9k?=
 =?utf-8?B?cU1uUkQ5TUlITVhVTGxIb2ovVDMwdGhOdW5qT3JmMXBCd0VjbUd3THhjZXdY?=
 =?utf-8?B?WUV6R3dMMkNhdFdyNnJtMHdDUkFueVNWalBHamhUTVp6dXpUV3dtd3ZXLzAr?=
 =?utf-8?B?bEgvYUJWT1l3QWZ6R0JmeVVIMVpUV0QxNGVvU1dQRC94Q0IrVVhyc3dOMDhJ?=
 =?utf-8?B?SnR4S01HRUdVZGpPSmFIRmRHWFFTTU9pTmhYaXpzbkVKQk9peVdvRFNyeUZ3?=
 =?utf-8?B?QmFNNG1ZRWp0LzhuekhxWkhFS1ZMenBCejB0RGt5WmxDMFkyRkxVREFJWm00?=
 =?utf-8?B?SW5rZVJ1TEVCSXlWQThaUUZrYnpvd3ZYcmlwdGl2VDJ2MGk2aWlsUENYay9Z?=
 =?utf-8?B?blJMcjJhSjJQcFJVYkpUdDAyREJaWkRGby9qcWpPZU95U0NUQ05VRHlhV0R3?=
 =?utf-8?B?ZHhxM3FTOGxjbnBDbHRVNEdPb3pmakNPVnE5R2NUazRmc2JZQmFQNEI2R3Rv?=
 =?utf-8?B?L0pKQzlrODRlOWwwOTcvejJZTjVRQ1o2NWR2TkcyclB2bXBVRWpBWlFwL2x4?=
 =?utf-8?B?NlVWVC95R1NndnBZR2NTNHF5NWRlbEtNM0RpcG1Qdm1keHhmSXFPQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OVN5o4o+f7lHvHY+aUJaQURI116owDqd7QdWvARLui0Z3Fnprbp/k0bAUtk5WwMPNF8AekqFNL/ncNunQx/W/2CJGYHTtjsTgFI6rBnkn24EmZxCmXFip+kuJndNcV3chhvAqvbh0K0gXKRxrBF2jAuKWBoZMV7NQlZfJvi2xH707cshkR9s3kLMEeKmPs2128x/NCH2jjQOP/B4/IBywy+qVYQcNnAD1Oug8Kcw1XPVO78ISiUE1463WdaWe9W8a4rdwoTxXaEppNDpz8DI1ZkIrmHhksLZV7vKvUCb0lK0Rv1Vn7Is0LDITlcluzlAtP9c3aD/OF2Z5JRzm8q/ZA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82105144-62b9-4f5f-1bf5-08de99ecbb1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 06:11:56.3074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jaEgf+RpY678GpRdLiyagWhRI9TSB2j43tV4mIzNVUk0zUJfpWZfqjbImq7z1BzJfKxDN7I5xK4T/fJovzFFWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6CD453F5DF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2JhY2tsaWdodDogUmVtb3ZlIHRyeV92
ZXNhX2ludGVyZmFjZQ0KPiANCj4gSGksDQo+IA0KPiBBbSAyNC4wMi4yNiB1bSAwNDoxMyBzY2hy
aWViIFN1cmFqIEthbmRwYWw6DQo+ID4gUmVtb3ZlIHRyeV92ZXNhX2ludGVyZmFjZS4gVGhpcyBp
cyBiZWNhdXNlIHdlIG5vdyBtYWtlIFZFU0EgSW50ZXJmYWNlDQo+ID4gYXMgYSBmYWxsYmFjayBt
ZWNoYW5pc20gZm9yIFBhbmVscyB3aGljaCBuZWVkcyBWRVNBIERQQ0QgQVVYIGJhY2tsaWdodA0K
PiA+IG1lY2hhbmlzbSB0byB3b3JrIGJ1dCBoYXZlIGEgYnJva2VuIFZCVCBpbmRpY2F0aW5nIG90
aGVyd2lzZS4NCj4gPiBXaGlsZSBhdCBpbiBzbmVhayBpbiBhIHNtYWxsIGNvbW1lbnQgY2xlYW51
cCB0b28uDQo+IA0KPiBKdXN0IGEgaGVhZHMgdXA6IEkgcmFuIGludG8gc29tZSBkZXZpY2VzIHRo
YXQgZG9uJ3QgYXV0byBzZWxlY3QgdGhlIGludGVsDQo+IGludGVyZmFjZSBhbmQgZG9uJ3Qgd29y
ayB3aXRoIHRoZSB2ZXNhIGludGVyZmFjZSwgYnV0IHJhbiBpbiB0aGUgcmV0dXJuIC0NCj4gRU5P
REVWIGNhc2UgYmVmb3JlIGFuZCB0aGVuIHN0aWxsIGhhZCBhIHdvcmtpbmcgYmFja2xpZ2h0LiBU
aGlzIHBhdGNoIHN0b3BzDQo+IGJhY2tsaWdodCBjb250cm9sIHdvcmtpbmcgb24gdGhlc2UgZGV2
aWNlcy4gU28gdGhlcmUgc2VlbXMgdG8gYmUgYW5vdGhlcg0KPiBmYWxsYmFjayB0aGF0IHRoaXMg
cGF0Y2ggb3ZlcndyaXRlcz8NCj4gDQo+IEV4cGxpY2l0bHkgZm9yY2luZyB0aGUgaW50ZWwgaW50
ZXJmYWNlIHZpYSBtb2R1bGUgcHJvcGVydHkgbWFrZXMgdGhlIGJhY2tsaWdodA0KPiBjb250cm9s
IHdvcmsgYWdhaW4uDQo+IA0KPiBJIHdpbGwgZG8gc29tZSBtb3JlIHJlc2VhcmNoIGFuZCB0aGVu
IHdyaXRlIGEgcHJvcGVyIGJ1ZyByZXBvcnQsIGJ1dCBqdXN0IHRvDQo+IGxldCB5b3Uga25vdyB0
aGF0IHRoaXMgcGF0Y2ggd2lsbCBjYXVzZSBhIHJlZ3Jlc3Npb24gYnVnIGluIGl0cyBjdXJyZW50
IGZvcm0uDQo+IA0KDQpUaGVyZSBoYXZlIGJlZW4gZml4ZXMgdG8gZ2V0IHRoaXMgaXNzdWUgcmVz
b2x2ZWQuIEFuZCB0aGV5IGFyZSBtZXJnZWQuIFNob3VsZCBiZSBhdmFpbGFibGUgb24gbGF0ZXN0
IHVwc3RyZWFtIGRybS10aXANClRoZW0gYmVpbmcgDQowMmQ0NGIzYThmYSBkcm0vaTkxNS9iYWNr
bGlnaHQ6IEZpeCBWRVNBIGJhY2tsaWdodCBwb3NzaWJsZSBjaGVjayBjb25kaXRpb24NCjBmYjAz
ODkwZDE4MiBkcm0vaTkxNS9iYWNrbGlnaHQ6IENoZWNrIGlmIFZFU0EgYmFja2xpZ2h0IGlzIHBv
c3NpYmxlDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gQmVzdCByZWdhcmRzLA0KPiAN
Cj4gV2VybmVyDQo+IA0KPiA+DQo+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzE1Njc5DQo+ID4gU2lnbmVkLW9mZi1ieTog
U3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCAxOSArKysrKysr
LS0tLS0tLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMNCj4gPiBpbmRleCBlYjA1ZWY0YmQ5
ZjYuLmE4ZTk4NzI1NjZjZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4gQEAgLTY0NCw5ICs2
NDQsMTAgQEAgaW50IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QNCj4g
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gICAJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7DQo+ID4gICAJc3RydWN0IGRybV9k
ZXZpY2UgKmRldiA9IGNvbm5lY3Rvci0+YmFzZS5kZXY7DQo+ID4gICAJc3RydWN0IGludGVsX3Bh
bmVsICpwYW5lbCA9ICZjb25uZWN0b3ItPnBhbmVsOw0KPiA+IC0JYm9vbCB0cnlfaW50ZWxfaW50
ZXJmYWNlID0gZmFsc2UsIHRyeV92ZXNhX2ludGVyZmFjZSA9IGZhbHNlOw0KPiA+ICsJYm9vbCB0
cnlfaW50ZWxfaW50ZXJmYWNlID0gZmFsc2U7DQo+ID4NCj4gPiAtCS8qIENoZWNrIHRoZSBWQlQg
YW5kIHVzZXIncyBtb2R1bGUgcGFyYW1ldGVycyB0byBmaWd1cmUgb3V0IHdoaWNoDQo+ID4gKwkv
Kg0KPiA+ICsJICogQ2hlY2sgdGhlIFZCVCBhbmQgdXNlcidzIG1vZHVsZSBwYXJhbWV0ZXJzIHRv
IGZpZ3VyZSBvdXQgd2hpY2gNCj4gPiAgIAkgKiBpbnRlcmZhY2VzIHRvIHByb2JlDQo+ID4gICAJ
ICovDQo+ID4gICAJc3dpdGNoIChkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0
KSB7IEBAIC02NTUsNyArNjU2LDYNCj4gPiBAQCBpbnQgaW50ZWxfZHBfYXV4X2luaXRfYmFja2xp
Z2h0X2Z1bmNzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvcikNCj4gPiAgIAlj
YXNlIElOVEVMX0RQX0FVWF9CQUNLTElHSFRfQVVUTzoNCj4gPiAgIAkJc3dpdGNoIChwYW5lbC0+
dmJ0LmJhY2tsaWdodC50eXBlKSB7DQo+ID4gICAJCWNhc2UgSU5URUxfQkFDS0xJR0hUX1ZFU0Ff
RURQX0FVWF9JTlRFUkZBQ0U6DQo+ID4gLQkJCXRyeV92ZXNhX2ludGVyZmFjZSA9IHRydWU7DQo+
ID4gICAJCQlicmVhazsNCj4gPiAgIAkJY2FzZSBJTlRFTF9CQUNLTElHSFRfRElTUExBWV9EREk6
DQo+ID4gICAJCQl0cnlfaW50ZWxfaW50ZXJmYWNlID0gdHJ1ZTsNCj4gPiBAQCAtNjY4LDIwICs2
NjgsMTIgQEAgaW50IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QNCj4g
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gICAJCWlmIChwYW5lbC0+dmJ0LmJhY2ts
aWdodC50eXBlICE9DQo+IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJGQUNFKQ0K
PiA+ICAgCQkJdHJ5X2ludGVsX2ludGVyZmFjZSA9IHRydWU7DQo+ID4NCj4gPiAtCQl0cnlfdmVz
YV9pbnRlcmZhY2UgPSB0cnVlOw0KPiA+IC0JCWJyZWFrOw0KPiA+IC0JY2FzZSBJTlRFTF9EUF9B
VVhfQkFDS0xJR0hUX0ZPUkNFX1ZFU0E6DQo+ID4gLQkJdHJ5X3Zlc2FfaW50ZXJmYWNlID0gdHJ1
ZTsNCj4gPiAgIAkJYnJlYWs7DQo+ID4gICAJY2FzZSBJTlRFTF9EUF9BVVhfQkFDS0xJR0hUX0ZP
UkNFX0lOVEVMOg0KPiA+ICAgCQl0cnlfaW50ZWxfaW50ZXJmYWNlID0gdHJ1ZTsNCj4gPiAgIAkJ
YnJlYWs7DQo+ID4gICAJfQ0KPiA+DQo+ID4gLQkvKiBGb3IgZURQIDEuNSBhbmQgYWJvdmUgd2Ug
YXJlIHN1cHBvc2VkIHRvIHVzZSBWRVNBIGludGVyZmFjZSBmb3INCj4gYnJpZ2h0bmVzcyBjb250
cm9sICovDQo+ID4gLQlpZiAoaW50ZWxfZHAtPmVkcF9kcGNkWzBdID49IERQX0VEUF8xNSkNCj4g
PiAtCQl0cnlfdmVzYV9pbnRlcmZhY2UgPSB0cnVlOw0KPiA+IC0NCj4gPiAgIAkvKg0KPiA+ICAg
CSAqIFNpbmNlIEludGVsIGhhcyB0aGVpciBvd24gYmFja2xpZ2h0IGNvbnRyb2wgaW50ZXJmYWNl
LCB0aGUgbWFqb3JpdHkgb2YNCj4gbWFjaGluZXMgb3V0IHRoZXJlDQo+ID4gICAJICogdXNpbmcg
RFBDRCBiYWNrbGlnaHQgY29udHJvbHMgd2l0aCBJbnRlbCBHUFVzIHdpbGwgYmUgdXNpbmcgdGhp
cw0KPiA+IGludGVyZmFjZSBhcyBvcHBvc2VkIHRvIEBAIC02OTQsNiArNjg2LDkgQEAgaW50DQo+
IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IpDQo+ID4gICAJICogcGFuZWwgd2l0aCBJbnRlbCdzIE9VSSAtIHdoaWNoIGlz
IGFsc28gcmVxdWlyZWQgZm9yIHVzIHRvIGJlIGFibGUgdG8NCj4gZGV0ZWN0IEludGVsJ3MNCj4g
PiAgIAkgKiBiYWNrbGlnaHQgaW50ZXJmYWNlIGF0IGFsbC4gVGhpcyBtZWFucyB0aGF0IHRoZSBv
bmx5IHNlbnNpYmxlIHdheSBmb3INCj4gdXMgdG8gZGV0ZWN0IGJvdGgNCj4gPiAgIAkgKiBpbnRl
cmZhY2VzIGlzIHRvIHByb2JlIGZvciBJbnRlbCdzIGZpcnN0LCBhbmQgVkVTQSdzIHNlY29uZC4N
Cj4gPiArCSAqDQo+ID4gKwkgKiBBbHNvIHRoZXJlIGlzIGEgY2hhbmNlIHNvbWUgVkJUJ3MgbWF5
IGFkdmVydGlzZSBmYWxzZSBJbnRlbA0KPiBiYWNrbGlnaHQgc3VwcG9ydCBldmVuIGlmIHRoZQ0K
PiA+ICsJICogdGNvbidzIERQQ0Qgc2F5cyBvdGhlcndpc2UuIFRoaXMgbWVhbiB3ZSBrZWVwIFZF
U0EgaW50ZXJmYWNlIGFzDQo+IGZhbGxiYWNrIGluIHRoYXQgY2FzZS4NCj4gPiAgIAkgKi8NCj4g
PiAgIAlpZiAodHJ5X2ludGVsX2ludGVyZmFjZSAmJg0KPiBpbnRlbF9kcF9hdXhfc3VwcG9ydHNf
aGRyX2JhY2tsaWdodChjb25uZWN0b3IpICYmDQo+ID4gICAJICAgIGludGVsX2RwLT5lZHBfZHBj
ZFswXSA8PSBEUF9FRFBfMTRiKSB7IEBAIC03MDMsNyArNjk4LDcgQEANCj4gaW50DQo+ID4gaW50
ZWxfZHBfYXV4X2luaXRfYmFja2xpZ2h0X2Z1bmNzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3RvcikNCj4gPiAgIAkJcmV0dXJuIDA7DQo+ID4gICAJfQ0KPiA+DQo+ID4gLQlpZiAodHJ5
X3Zlc2FfaW50ZXJmYWNlICYmDQo+IGludGVsX2RwX2F1eF9zdXBwb3J0c192ZXNhX2JhY2tsaWdo
dChjb25uZWN0b3IpKSB7DQo+ID4gKwlpZiAoaW50ZWxfZHBfYXV4X3N1cHBvcnRzX3Zlc2FfYmFj
a2xpZ2h0KGNvbm5lY3RvcikpIHsNCj4gPiAgIAkJZHJtX2RiZ19rbXMoZGV2LCAiW0NPTk5FQ1RP
UjolZDolc10gVXNpbmcgVkVTQSBlRFANCj4gYmFja2xpZ2h0IGNvbnRyb2xzXG4iLA0KPiA+ICAg
CQkJICAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2UubmFtZSk7DQo+
ID4gICAJCXBhbmVsLT5iYWNrbGlnaHQuZnVuY3MgPSAmaW50ZWxfZHBfdmVzYV9ibF9mdW5jczsN
Cg==
