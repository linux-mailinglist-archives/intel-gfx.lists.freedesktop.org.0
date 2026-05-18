Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KK2xMpuDCmqv2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 05:12:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C55F565583
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 05:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D5710E2C5;
	Mon, 18 May 2026 03:12:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eaxPf2pj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA12610E2C5;
 Mon, 18 May 2026 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779073943; x=1810609943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3xUhSXCMdkFLwBCpq6BmhOKkRhJqBF6NafUZTauTqCo=;
 b=eaxPf2pjtCvJYNhPYgS/ciR2S4Gw28Ls/2ix3WjtMvEEVuvdKZyHEhiQ
 CFyxoZb6Lzv8/KJVga1n/qMMLngkspi+BZrWnBH34xut5e3zB/30EeA3c
 8k82gTrM8Gs17QEpDwXLwbRlA0D9eBlE/M40HMvbrGEvd5UDmoLWGuG8+
 5eaanq9J0BQWY8F98xsIc+g5cNYQja9AVGkJRNUHkZo/ANxckg+dcRUKy
 6wmZkvmBSUlSP+raUAR+q4MTNpxeq4eKREGrACeyU32VhuQXp/seQA22Z
 29YJ249jiyANOkD5NrXfK907T/IKgMDwHk0udpPL8typbkaU4lJf3Ssbk A==;
X-CSE-ConnectionGUID: C+f4pb6BQiS5eRQhgBfrrw==
X-CSE-MsgGUID: WIMMruBHSZKsmcRyDzffJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="97492648"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="97492648"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 20:12:22 -0700
X-CSE-ConnectionGUID: caFv0296QlmiHO6KrLOKfA==
X-CSE-MsgGUID: Gnu4DWD1R6O7KdAF4WMvXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="238413618"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 20:12:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 20:12:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 20:12:22 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 20:12:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RXTDUyPGbKrSM+qeTGilKs1c8o731ZP8K99aKbxRFyKfNFslmhDY3lrAF4drPSWjsaNUC21bGePADdQ36ad9vwSClR+GRe5Bu8AzLmnarn1gybhf133ZxTvfAXaj04Dx/QWn1COuirVhaNLY9WZeAOdjk7nnaCmwAkIhfOkkiTBktav8ozdkgQOZdiMc+guT5caZZ291t8+FF5WtXL9kJNPavjBoCqUSUplY5V21KxB7i8Xz1VXvgaSocw0m6cXBzFWw6s7hU8UFm40JpnTCRGxu14JnIi7+sHonq84WCLFfPbG99HKA7tCXHOKKy0Gq/7PBKmLlAXygz4qjUMhFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xUhSXCMdkFLwBCpq6BmhOKkRhJqBF6NafUZTauTqCo=;
 b=bknIy0UDm9qzg/XwHTl0vG/C5fxlUIARz/keMpL92PAVT/iJ8lnmPCBcazCwinDG5PY9M3lagKOMtFbuun9WPn0bPMQYcx9XPUqRt3chH7f6hZinSxC1Clv14RRv5X25egqprhq/lfCu8MReTYl6Ygmfl8j/BVBHMyjJgMXe6XktUhuY3oJlotsUGBHxNt5EZLyXCJNl0XuijbZJbBHsWd8XWFtWURDmpUqeGz/s885IA1C+Bt7GtrceUN0nCrKOxvGsi+AbU+yLIM0A0o2WiEtco7//JvjKf67TmPDGoj5kzBDbun32OCxM/ZMQo4uQNg9NyI2NPGFp+o7PpuyJ0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB7764.namprd11.prod.outlook.com
 (2603:10b6:610:145::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 03:12:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 03:12:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
Thread-Topic: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
Thread-Index: AQHc3cFP/NwvG4GNFEOFwcNEgcWwjbYTLEoA
Date: Mon, 18 May 2026 03:12:19 +0000
Message-ID: <DM3PPF208195D8DD99F697F238A2D0CBC37E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-4-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-4-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB7764:EE_
x-ms-office365-filtering-correlation-id: e2b1e741-933e-422a-5d0d-08deb48b4586
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|3023799003|11063799003|38070700021|56012099003|18002099003|22082099003|4143699003;
x-microsoft-antispam-message-info: cxq8SL0qVopQvn7V8YXmUITid1GK7xip3ylNYNO7RH2jf3FEAKcowT6LphVB3M4DrOrfrd2vE1Mo9vEpf3vJ+bzPC7L5WeNTaAqKQEpeMB38ZmhAwG4OJbK7tuGBBkhAIx8aJ14kTHKP52ER02HdnJMBpL8zmI0nDr6/g+kjz6cPM/uimGBEg078i2bZQiacOgCsS5PpG7LUOrETO/7rOaM/SxLv8Myqp8XVCbA7vtOVGQy9dCYDlnobiJRqnnVVWo7W5muOeCJoYrBpJWkg36ZBi0R1nsRI9916NIRoRqroWgEK1Y5s94TjFFvfdaF60dOkg3/tBuAavBDb7Wog2j1hMk0pvM8kLlZSc3bP2f6i1pYOTx3dK1JvaTmXGp5nb5qAX6MnGbnb3pfyMsvujk3sHW/TUmCHJBsWYTEiXROqBl3YA038ou8dGQ1yivNDYaVmcHbqkA2TZL/UFrWqSCS3UnWoRHNH/oobz4vs0qIWYVoczeZfyF7uUI6/rsp2i4N9qOtG62ak7gG5oCV28SIlWUddYu99IiJf/8XyCktPG8BD1r4w88xHGTBEv6+RicrwAoCCIq5141lNbVu/yh2PE4+YtAU6UJZZPOR7c1qxyuHE9o6AmCFq4xRCfQcmlrVox0hgCyEKirv6Aya0Ri79yKb40UUt1WFClRAFzAk/Meifn2K5S420moCqlBdGbnyHQPOdemOlshZsHO/jyaynON+iiiMVG4+b1yta15JFLm5mSxFLqJzCV/Zgrfjr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3023799003)(11063799003)(38070700021)(56012099003)(18002099003)(22082099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MStKODlXZHpQQXNHU2ZmeTZrYnBzUzh3eExSRFRsb3B5dEFXZzNDUi9Kdk9I?=
 =?utf-8?B?ZlcvTUR6VmtkSVV1emsvZ3FBSTNjWmxid1cxeWJjNThtaW5rRGM2UFBwcjZo?=
 =?utf-8?B?VjFZdGVpK0tzRnRPNFBzcVRlS3ladWtvSjZYbU9YdDFGMTh3MEFBZFl1TGdz?=
 =?utf-8?B?M0FIK2xMcHRkTUNVT3l0eEhWa2dJMU9SV1BtZXBDRmhMaFozS3dOUkZsSDli?=
 =?utf-8?B?TlRiMzdHNkdRTTVwOWJJU202Mnd2b1AyeWFyWXRjNEx4RWFvditvb0kyb1lm?=
 =?utf-8?B?Ry9GcFAxUVAyRVdvU21UM2hPWGxuQmVtS3pGNEVyMjlCRkFlaVpEYWxtZ01J?=
 =?utf-8?B?M1NzWW92RzEwZENENVEzSGZOeG9tZ0dYSVZiTllzdjEva0pmV0gxUmVINm5F?=
 =?utf-8?B?a29WTG50c1ZablMyU1JpOXRjOUtiQ01tem5Ea1B6NzgrTSsvWmtnN2Rrekxl?=
 =?utf-8?B?djZ6QkFLQXU3eFVYblhIMG83L3NsTGZ1YXp4ZDFkNTNya1RnT0JPOVRuTnFF?=
 =?utf-8?B?b3NWWndlQkJJcUdsczFyNlpzSXlwUEw3TVQ2Y0pVaDF0S1FEY3EwWTJlaGpT?=
 =?utf-8?B?ZE9QYjRhbi9ONVY5TGtWaHNtUDRRRFFCKzBjRjR5alFad1EvbUdadDZLajNZ?=
 =?utf-8?B?a0FKSU01MzVNWUI2Y0txS0gzY2lUSjhTbEdPb21EVGo1djRPampVV0RLTzVH?=
 =?utf-8?B?ZFJVeUl0MzMyK2VnTTlFZjQyMUMzZTV5UEJJMmlzOWxzQm9CVWdGcUk3MFJ1?=
 =?utf-8?B?ODliSkRXcUFSaFYwaDFjTUtNelBZeXc5Y2YxZTlCejFpZ25yYkJ6UlZlSlht?=
 =?utf-8?B?YlZEdytQMTJFRGc0SWF3SVk1ZkhPbFdwdXZYS2xBYVhhbTNXSTZkcTFDdTBR?=
 =?utf-8?B?KzJreE4yVllwQVJTUzJFYjhNUVpmRFdLcVBCRytzYWFZVkRUUyt4MmtkSHZG?=
 =?utf-8?B?ZnBlR2EwSWlPZ2prdjRhSDkxQmYvRWw2S1lmMS9xVFpSS1hrVlIxYStRaFJO?=
 =?utf-8?B?QTJMQTR2K2xQOU5KWmN6cW04aVIxYlZsTFI1RDF2eloreUZvZ09BTi9Dd2RV?=
 =?utf-8?B?OGpSbkZxZmxvZWcrdHA0cDd6QzBPQ2EwWGR2aGtBR2t4d3lpOTlGeU9MLzN5?=
 =?utf-8?B?Q3NOQVdyZmlWMHhrVlVuQ3EvRmlIYTBCd3E2RXJVNnFpMXlxTCsveEZtMVhN?=
 =?utf-8?B?d0lMeVROQlZza1huVGw1NklCUHNLbXh6SHdjZEpNMTJpb2VuRlZPZEpPTjhh?=
 =?utf-8?B?TzRUeFFqMDhVRVlxUC96dVFJZkFqVFh4MU8wLzVsaXJ1Y00rN0FUSFBlQWFT?=
 =?utf-8?B?VXFvbXB3d0ozVnBoWkZoYmVxQmpjNFNoWWExSFlsVmlGVWJqTHU1eGQ0TFQ3?=
 =?utf-8?B?eFJUL0R2OTBYUGYrTzZjOGF5Z0tOUWMwZ25hb2VkWnZRVmxsU1VQS1dNYUU2?=
 =?utf-8?B?dmFWZGpNcGN6b0VrZVR1T2d4MFJGZmwzWUF1RVhpZTU5ZkgrdjdtQTk0SGZL?=
 =?utf-8?B?WjZoaXRuSy8rMnVQOUFkK0lkVDl3bnN2RWIySk5VNDRVakkrOVVtWnhOK3Jn?=
 =?utf-8?B?a3kvUm0xRUJZSm1JU3Y1ck5pL3Y1dFpZSXNsNUhqbFVEU0d5YjdmMFRyUmEr?=
 =?utf-8?B?anFXaG9zTmxhN3EyeXhvTkcxSVIxeURRUTFPUkVrM0ZaTWd3QjRWQ1dtNGNp?=
 =?utf-8?B?aTdKTU14WmlYaW5uM2k0WUswcmtrRXhwMGdDa2JocE9JVC8rdVhpSCtCNmIz?=
 =?utf-8?B?YkxJdUt1Y29TTEhkN3gyNDVOd3pDLzc2dTlOK2NWaDlQME8vSHo2eityK0ow?=
 =?utf-8?B?MzlQcSswRlQrVHIzUHhOYmFLVnNha2VRekRtdng3M0haclJEZFNldnBVU0l3?=
 =?utf-8?B?bXVpcEJ0cTU0Mzg1SDZGenQ5c2RmYzBubC9PcjR4bXdWeFJLc05WYlFRRlk3?=
 =?utf-8?B?QkZUdTh5a3NTRk5HR2k2ZlpYaGZRdzIvZUlkNzhQMzVtUC85c0NqaGhIVzJi?=
 =?utf-8?B?WnpkMTg1cUNPdm9mWWxjZDRvb25RYXk0akx4Kzh0Uk1MUXpOWEpoVGRQMGg0?=
 =?utf-8?B?V1ZHTTZRZC84Vyt6ek9ReVFiYmJxWGcvVFE3bWZQVGtaa0VCNVgyYnBYS0h5?=
 =?utf-8?B?cHdTSDJVRlRNazdway9UWXBXNjFqZHVCS0NSSWhwd0E1Ujd2QndkRU16TER1?=
 =?utf-8?B?d2w3bEZZc0NPMjhKRzduempDTlNaVGhyU1E5NE1zV3BFOUxpeGpsejd4dXU1?=
 =?utf-8?B?VUQ5NFlZbHZhdXZvVnAwRHZkNFNyNFdMcU5Zc1hqdnVUNXIxVnFuN0hHd0U3?=
 =?utf-8?B?STFXQUZWbTJUcEhwT0lQemNWZ2NUeWVJcnpPN3lvRTJKa0U5Vm9aUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: phx7xd/VWUqurXUhcPzoXU8l+ZUUikOtLcGTQriL060+53pQnE7q7YCWyX6U38c5hRPLQ60gSBCDJ6PeSo1OUizfi+sIkYbGCHrSA9qoHCGJBnz/9taJt7AKOn1rZOFte7XAzrCWOHZ3SyMonCCmz2uAZTwEQlooetnGZNkD0comf9P4Wt9sq1IcDcWuHo/4BIMRhS3bo1CPBo6hdwuY7NuWOzuz891/kWmRiGjvYxWVOFf9tTvcJR4MiBigsvlsdeyjgVgZmruJrVGJCF91wifmvt+OH3N2iq5cvCWGbdQT7YS0Nwiqv3IQzdqXyTNuJkoB1iZbKdG5ONDwn4H2vg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b1e741-933e-422a-5d0d-08deb48b4586
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 03:12:19.2533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NlAu7kRj4CNl0RGKdDZJTL5j9AIBbUNVtYK4OXKH8irc8kh1yILF4t+dYJ+7Zu0woYHK/2Ttn4HZl0PDRx2Ljw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7764
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
X-Rspamd-Queue-Id: 2C55F565583
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDMvMzFdIGRybS9pOTE1L2Jpb3M6IGxvZyB1bnN1cHBvcnRl
ZCBWUy9QRS1PIHBhcnNpbmcNCj4gDQo+IFNlYXJjaCBmb3IgVkJUICM1Ny4gQ2hlY2sgZm9yIGZh
aWx1cmUgc2luY2UgcHJlLUlDTCBHT1BzIGRvIG5vdCBjb250YWluIHRoZQ0KPiBibG9jay4gQ2hl
Y2sgYWxzbyBpZiBWQlQgdmVyc2lvbiBpcyBhcHByb3ByaWF0ZWx5IHVwLXRvLWRhdGUuDQo+IA0K
PiBJc3N1ZSBhIGRlYnVnIG1lc3NhZ2Ugd2hlbiBwb3J0IHJlcXVlc3RzIHRvIG92ZXJyaWRlIFZT
L1BFIGFuZCBwYXJzaW5nIFZCVA0KPiAjNTcgZm9yIHRoZSBwbGF0Zm9ybSBoYXMgbm90IHlldCBi
ZWVuIGltcGxlbWVudGVkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxt
aWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCA1NzAwZGU0MzhmZGZkLi4zZjllNGQzMWM3Mzc1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBA
QCAtMjE4NSw2ICsyMTg1LDIzIEBAIHBhcnNlX2NvbXByZXNzaW9uX3BhcmFtZXRlcnMoc3RydWN0
IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXkpDQo+ICAJfQ0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2
b2lkDQo+ICtwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSkgew0KPiArCWNvbnN0IHN0cnVjdCBiZGJfdnN3aW5nX3ByZWVtcGggKmJsb2Nr
Ow0KPiArDQo+ICsJaWYgKGRpc3BsYXktPnZidC52ZXJzaW9uIDwgMjE4KQ0KPiArCQlyZXR1cm47
DQo+ICsNCj4gKwlibG9jayA9IGJkYl9maW5kX3NlY3Rpb24oZGlzcGxheSwgQkRCX1ZTV0lOR19Q
UkVFTVBIKTsNCj4gKw0KPiArCS8qIHByZS1JQ0wgR09QIGRvbid0IGhhdmUgVkJUICM1NyAqLw0K
DQpJZiB3ZSBhbHJlYWR5IGtub3cgcHJlIElDTCBkb2VzIGhhdmUgVkJUICM1NyBmb3Igc3VyZSB3
aHkgZXZlbiB0cnkgdGhlIGZpbmQgc2VjdGlvbiBmb3IgY2hlY2sgdmJ0IHZlcnNpb25zIGxldHMg
anVzdCByZXR1cm4gZWFybHkgYWZ0ZXIgZGlzcGxheV92ZXIoKSBjaGVjayAsIHdoaWNoIGlzIGRv
bmUgZXZlbiBiZWZvcmUgdGhlIHZidC52ZXJzaW9uIGNoZWNrIC4NCg0KUmVnYXJkcywNClN1cmFq
IEthbmRwYWwNCg0KPiArCWlmICghYmxvY2spDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWRybV9k
Ymdfa21zKGRpc3BsYXktPmRybSwgIlZTL1BFLU8gcGFyc2luZyBub3QgeWV0IHN1cHBvcnRlZFxu
Iik7IH0NCj4gKw0KPiAgc3RhdGljIHU4IHRyYW5zbGF0ZV9pYm9vc3Qoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksIHU4IHZhbCkgIHsNCj4gIAlzdGF0aWMgY29uc3QgdTggbWFwcGluZ1td
ID0geyAxLCAzLCA3IH07IC8qIFNlZSBWQlQgc3BlYyAqLyBAQCAtMzI3Niw2DQo+ICszMjkzLDcg
QEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+
IA0KPiAgCS8qIERlcGVuZHMgb24gY2hpbGQgZGV2aWNlIGxpc3QgKi8NCj4gIAlwYXJzZV9jb21w
cmVzc2lvbl9wYXJhbWV0ZXJzKGRpc3BsYXkpOw0KPiArCXBhcnNlX3Zzd2luZ19wcmVlbXBoX292
ZXJyaWRlKGRpc3BsYXkpOw0KPiANCj4gIG91dDoNCj4gIAlpZiAoIXZidCkgew0KPiAtLQ0KPiAy
LjQ1LjINCg0K
