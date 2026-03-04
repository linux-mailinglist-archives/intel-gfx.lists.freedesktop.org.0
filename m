Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePAKBb7Pp2kBkAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:22:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC421FB1AE
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D402D10E951;
	Wed,  4 Mar 2026 06:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMTFj3wA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE65510E110;
 Wed,  4 Mar 2026 06:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772605369; x=1804141369;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5N/kfYQzHHERkh5oA4GoTuWnAs7htd1lM+WWRWxhttQ=;
 b=fMTFj3wA3C1bgYRE1f9wq4N/VwSkwDjxvdXXaeLbfCuWtchCL+JiGhvv
 lVO3ZVkZbLPefDBoCemWZF5/WUH7rIFADL6ZcE38cS3pbzw/vSTIstOJu
 2o3BbHIvn/Z5pt8dPPN+IfKr6ZgM/iLL5JGr+szXCD4tP5TuK5ys77wWO
 /XmK9ypNBj5eRHNPNPTE9JuE3EqCqkJk5c2nsQnyGPTg6qCVHcRLnrKxQ
 xlxfFp4zx7Ry3BJccOcYnxZb568s2bgtjYc4feaV5XMfTA+5WKartWgr+
 CA8ins3W4s9lpECzysPnGlZoMA0OHsBUVjsPlliNOD/0FJQzfWDD2eQLb g==;
X-CSE-ConnectionGUID: /uKoaqjiS1e0erxZvixbeQ==
X-CSE-MsgGUID: cp5OXwTMSJOjkOmWUO09yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73726189"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73726189"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:22:32 -0800
X-CSE-ConnectionGUID: 26zqPjFwTTqzltPD1Tn4oQ==
X-CSE-MsgGUID: AiyKwrsTQ5emUfTu1MAfPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="218196378"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:22:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:22:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:22:31 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:22:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aHZvrAbHsOW+vTNDqBh+af0RFBWxbs0dc2ilptONZsBpb6Rb8oS2XyZ4nGNd5w8bxWS5wPek2Gkv9L52LeW+J1fzeFwZfhDeF3zaKwzcR8HPAttYQS7sYgqlUvwWnA54xwyLbBnmaVadaHKFx+LpQ9g4YAh/REvhpmsq9FmMB+BVzUYcQCvmMCq0pouhsSgRsguwQPTsISfG5JOWGBwlOVpz+3BfMwU54Cu02ZtR3AvwgeskDxnZSfKaS0ddUy1jh0HmKRkwHOBKMbr9bwzVuszLZzZtqJrlYgO47Hrl3XWbnMCvv/ckvwDJzd+08+ZW84icTgZrS6sjRNrrkAHcRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5N/kfYQzHHERkh5oA4GoTuWnAs7htd1lM+WWRWxhttQ=;
 b=WwdANxRiZZbfgbZnmj7QQ/h0oNfGc4udo+b/TfjZEi03OmpXVtiSllS175pQPZVGmMIZ4a4TSElSTnGRmMJe0u7noxN9tupR9anKk0Bk35ojHuK4aln/EW+7huToorUYhkTCjUd/Y99fbj1fM0TY0Ns5kmO4GzI6CLZdp32PRt/f1MsG+rmCC0zaj0G6rQ9c7MQ44Euvk8y6K8pxWl2zgiSdEM//civwZxc+rCoU5wppGMkYJ6kuQQYV2ugFl6qr5SfDiJoHRU4/AWPyXrq/IXf7b8ICr7saCrNMoFzMfibGH8j52rx+67qRHt/fwSToMed7QWTehFn4gJd7ff+FvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.17; Wed, 4 Mar 2026 06:22:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 06:22:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq4xnDvING+yqiUyD0QK/iVWJDLWd5hAAgAABYoA=
Date: Wed, 4 Mar 2026 06:22:28 +0000
Message-ID: <eeec630bd7f01f600ff3d067ab695794a81f4e87.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304040551.754483-1-arun.r.murthy@intel.com>
 <987909c6f52f046cee33fdaeb4719c131946069b.camel@intel.com>
In-Reply-To: <987909c6f52f046cee33fdaeb4719c131946069b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7043:EE_
x-ms-office365-filtering-correlation-id: aa2bb0d2-f293-418c-4e3b-08de79b6692f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: o+9lmNyPre6mLPRu5IjonBrv3GmzzP7djl0NQsAqTeCo7IAYp9iBzraMmhsbwiy9CwtWC8zzGbOwi/SZL+r1TVrH/cKVEra1tkWpZWTg4hihPGQmB6NylTd5APOJPDvmiTfX/XXwechypB8fWIUMtsGlxh2V4puFWH8bc7FV7D7Ty7G05Ln5Gy+vlm4w7KTH3WOeTCKtB1EsJFu8oWxfDdhRv/XCo+MiAwFKL/X5u0ZIrYs+ChiBXYEsrYsc+7rnIVy9cxvLJUvEfzRNVSO+y2zO8F6hjHuWXk7sFR2bN324LyucCkj0nHP3CXhu+XNtilPC0iModVlIjFxHpBafzdsXcXdN/NiDqyB0H1ga1x7wzuZhTcVfwJ5ccgBTT2wqhLwjaj89A7vQqYHHZdQHZpDfHgSpB765aXac/xleCjIu2J7vPGyNf9kx3UWngdzzbDnpGCCM7jFrGqhRId1TohM9TC4+Gp5+k/RZTs/mIo0lAl/SapYsDYk5WNVakB+XPt3mf4r9fpPp3y92jvEsHT5Vgg1m+CB1kssVQItV1ESUTKuuxxTzp1MMoYXl8kkl2tswxhx0W/dhE2TgPENWmheH+kV1gCu3oTjKoO3p8TNubPgc2vP8JgeNDsTaS4wjONoZK6MihU3Ha/2PpMR9dlisJG7F6lBPZJal8ho2JQaJPoRnLyIynybJmRMnAzH3vwDQx/wRGK1Uh1aGjQHC/JVp+f4HoJsQ+Beq2rzRd9M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2gwS0o5Y0R6dXNkV284dnU2U1pHTFlnSmFveXRxRTlOdXdsT1duTUQ0cTBu?=
 =?utf-8?B?MnVPbHpEbTR5TG9pRXlEVVJnNm9mQW01dzhqQXBESENON3UyeElSbUZYZ2lT?=
 =?utf-8?B?TXlUcmRvVGFrd3dZamFqbWp2QzJLN3RUcEdYTG45eEVOUGcwa1BocjhVYm43?=
 =?utf-8?B?ZDl1S3FyaXkxKys4amlxQnBMNFRoWkpzYWxzcllRR3M0cDB3eFhOWWg4QTE4?=
 =?utf-8?B?OUZuUVh2N1RNZkdETGMyYVhEdHVsVHV5NjlvSjduZFdMa1c2RjVncGE1SEc4?=
 =?utf-8?B?RFBpNlduTTV2M2FXSDdoQnBvU1VxQ3NBelE0dDhDQmhDK3NPWGg1ZFNEamJz?=
 =?utf-8?B?SnBFbGtwNmR2NlhYTVMxQStjbTZHQmNxcUpucmRXZm5ocXU3V1FYNUc1STk5?=
 =?utf-8?B?bTREc2tiWk52bk9vdDhSNkJIODFEV0cveURQdDNneGIwVXVIVHcwMXN5OUc1?=
 =?utf-8?B?YVpVaHVONktGbmNpOUM1TVdva0lNdVliMUpHdHdIdDg0V1NCVGttWHVuYmwv?=
 =?utf-8?B?ZW84NmdXWmFiLzBZaUZQSGpIUVkwRkoxOU8zVTFHWjZiaWlNVnUrOUNicFlr?=
 =?utf-8?B?TUlSdk9ERndITXJUbk1FT2NrdC9hdVduS3o0VzJicnBRY3NlRkVkT0twVHlK?=
 =?utf-8?B?YTdwTHhwNTRuSVNTNWl5Rm54NW82UXpmVzRLVFpzV1hwWXp2aWRsWm5rbU1P?=
 =?utf-8?B?R1FqM0dtVjhwMU9uTC8wRDl0M0pSSXE1VzkzT0xvWU1QTTNOa01pZVBPOWtY?=
 =?utf-8?B?Z0VZR0JEQnNZb1N1V2FUbXBMZ0EyazBnZ3VqRlVwbUhENEdDWnpWTWkrZE5o?=
 =?utf-8?B?aHRMSUxlL0ZRRExxZFYrQm9aeExTRTcxOHI0K2VCc1dDMWVXM3hwSnhDL1RS?=
 =?utf-8?B?MmlEQjhrakdEV01XaHk4cFJCZ0pYRkM2Q3VCbklTVklpWlhITmlVWHdZcEMy?=
 =?utf-8?B?R3ZkVXNkV3lSeEVyc1EwYWxlS0p1YmRHWnk4MGZxc0RLVGFaZUxzdERuQ0cx?=
 =?utf-8?B?OTVBczRpVE5WL2pPS2djSXlpTHhZMlhCUzE5V1MwQTV5U2dGcEZ1bStJY1Ft?=
 =?utf-8?B?SlFtUEpYZ0RGckJ2WnFXdTlsdFpTbDVJb1BsV2NibzJmRk9CVFNaTFpUeGZY?=
 =?utf-8?B?d3p0MmRUZW8xUWRORytheHNzdjdJbUNCMnZXWHp0eERXU283dDVhZjJYQ1Z5?=
 =?utf-8?B?YlZWU1N3VE04OVdjV3VsdlkrdncrT1YxZWFVckhxdFpmQU5qMy9ZeCtnTWdo?=
 =?utf-8?B?Wld0R2wzcElLcFQxeTJHaXlOSmUvRlVBOU5pSXpnQm5sSjAwYkpvajNmUXhh?=
 =?utf-8?B?NS9MSXZ2alROcTVLMWxPb3JKNmZLamsrQzJsdDdDcVhVRlZjQ3pFUTlheUpT?=
 =?utf-8?B?S0FQcnhiSy81eFJSdmlNT1ZWYVVBRFVhYjNTTnorZDBXd0c1c0ZBNHJteWpI?=
 =?utf-8?B?Rm1tQzlmQWNNbVBQY09RNEtmSmt5V0VIcHdkY3JXT1UxL2NmTEVRb01OUVYz?=
 =?utf-8?B?T04ydS9GNXF3YVpiRjdFL0tacHdzSHZ2NjYrdGpUMDB2M3c1UGM0eVdJNTkr?=
 =?utf-8?B?eVVaVjEwOUtBVmdxYW1ZMWh2bkRyaXpCYmZIWkdoOVJLcFlhRGk1Q0w3cFVC?=
 =?utf-8?B?OEQ5TGZUTmppWlJKS2RxN2hISXMrTlhSd2ZjcjNJcmUvcm1hTFZ1OW5URmg5?=
 =?utf-8?B?czN4S2ZydzVwVGJOZDR1S1ZyK0RzQWg2cXZ2MmtsMzNxUjFlOE1MN0tFV3Ax?=
 =?utf-8?B?dVpsRUNGWW1qWTUyd3NtT0h4WC9JeTZ0K3U3L1dSTElFWlZuR0tnTmZDNVNk?=
 =?utf-8?B?akp6a0trYUpLVkpDd3JoVHVieDNROXJ4cXNhQ29oOHpwYWZRQkJvdkxEaHFt?=
 =?utf-8?B?RDNhVjdqTVJWdzEveUZia2xDMGR0WWdXWUlRdUtIOWxrWEpUN05IamNva0lI?=
 =?utf-8?B?ZHBRYWErdElWUlFmMXh5TUNoY2FYV2hKNkZMOWFrTWs5cGJiS2RZWEJ1UVdo?=
 =?utf-8?B?Z25XQjQrOHo0cG1YLzJVbDJiRHhEeGVtWWlWMkZpK2d3dnA1dzVDUzFzV1Rw?=
 =?utf-8?B?YVdwN0RZUzIxQVhqSHFhMk8yRnZJVnBVazd0c1ExdGtQZk9YMFN3Kzk2aW5R?=
 =?utf-8?B?a1Y5SlRkZXFxVjRlUUlXWUtQV2tPTE9CUDBTcDR0eXRadzZNWjg4OElrSWlu?=
 =?utf-8?B?QlpKRDlkUmorQXVaaUM0UEh3N3dleWtXVmFZd2FvMXd6T3NmYW5rYVlWNWcr?=
 =?utf-8?B?VklsZ2x2M2FNZWsrZTdicXpEM2dMNGlIeXRWdmVNclQxZk9rb3lmeUo4VTRj?=
 =?utf-8?B?VGE1ZDRWZFlDSWNORTBWRW9iTjBxUmpSMGVKdG5XZ28zL3hYaUdiZm9nMTNl?=
 =?utf-8?Q?F8AvvlBK/adKzN7Wyzoxcq6bxBExHdgMrGgvryHyquXYG?=
x-ms-exchange-antispam-messagedata-1: NGA8w4er4aeXbdsv8B5+VW5bfs+ObNqN+w4=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F201186A50FC774CA72F1FB7F96AD233@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XyzgGEGkVNUSDsWJ5qR8PanwvNo/j5xRDcpR/Keomb5VVFh3eIAysjZe3iiCuMkaYb8UmLFzIXI9W07oTMjr3klRjD94zrYLQ1bL7xqaEtG0fRNe5yFTkmHMNqQW/4x33qmxf3TBzjrns7dNDdZ8q8j1GSuc1q/QtuK/DxtZMYQNKMZnLw+Skqxl18ACDyv5kpNA+oaXOUZRq84BW0PhzaRSedUzPDEtv3X6lsaOLGaC3N2rYQclHdGoMq/0hjHclExLu4aObP20bezEc/6XhNiebN24N+8Xgio7xUBiFlKkOT+KCLQepci2YkApTKP21LUVBYXxthgLEhs8X1EJwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2bb0d2-f293-418c-4e3b-08de79b6692f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 06:22:28.8689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLWP0b4FGWTaT53LLRMIkPKd5fNumR/mUpF1XzMJoNQRCPwfvPTAhV9yKz6SP+ILr0Vn6ov88F3FGlLSTdA7I67G7XRGRqHrS8LYfq5FRO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
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
X-Rspamd-Queue-Id: 6AC421FB1AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDA4OjE3ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNi0wMy0wNCBhdCAwOTozNSArMDUzMCwgQXJ1biBSIE11cnRoeSB3cm90
ZToNCj4gPiBGb3IgZURQIHJlYWQgdGhlIEFMUE0gRFBDRCBjYXBzIGFmdGVyIERQQ0QgaW5pdGFs
aXphdGlvbiBhbmQganVzdA0KPiA+IGJlZm9yZQ0KPiA+IHRoZSBQU1IgaW5pdC4NCj4gPiANCj4g
PiB2MjogTW92ZSBpbnRlbF9hbHBtX2luaXQgdG8gaW50ZWxfZWRwX2luaXRfZHBjZCAoSm91bmkp
DQo+ID4gdjM6IEFkZCBGaXhlcyB3aXRoIGNvbW1pdC1pZCAoSm91bmkpDQo+ID4gdjQ6IFNlcGFy
YXRlZCB0aGUgYWxwbSBkcGNkIHJlYWQgY2FwcyBmcm9tIGFscG1faW5pdCBhbmQgbW92ZWQgdG8N
Cj4gPiBpbnRlbF9lZHBfaW5pdF9kcGNkLg0KPiA+IA0KPiA+IEZpeGVzOiAxNTQzOGIzMjU5ODcg
KCJkcm0vaTkxNS9hbHBtOiBBZGQgY29tcHV0ZSBjb25maWcgZm9yIGxvYmYiKQ0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCA2IC0t
LS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoCB8
IDkgKysrKysrKysrDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+ID4gaW5kZXggYjMzMzRiYzRkMGY5Li5hNzM1MGNlOGU3MTYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBA
IC00NCwxMiArNDQsNiBAQCBib29sIGludGVsX2FscG1faXNfYWxwbV9hdXhfbGVzcyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqANCj4gPiDCoHZvaWQgaW50ZWxfYWxwbV9p
bml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gLQl1OCBkcGNkOw0K
PiA+IC0NCj4gPiAtCWlmIChkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxfZHAtPmF1eCwNCj4gPiBE
UF9SRUNFSVZFUl9BTFBNX0NBUCwNCj4gPiAmZHBjZCkgPCAwKQ0KPiA+IC0JCXJldHVybjsNCj4g
PiAtDQo+ID4gLQlpbnRlbF9kcC0+YWxwbV9kcGNkID0gZHBjZDsNCj4gPiDCoAltdXRleF9pbml0
KCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDAyNWU5MDZiNjNhOS4u
ZTc4MWQ0ZDBkZDFiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+IEBAIC00NzA5LDYgKzQ3MDksNyBAQCBzdGF0aWMgYm9vbA0KPiA+IMKgaW50
ZWxfZWRwX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QNCj4gPiBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiDCoHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4g
KwlpbnQgcmV0Ow0KPiA+IMKgDQo+ID4gwqAJLyogdGhpcyBmdW5jdGlvbiBpcyBtZWFudCB0byBi
ZSBjYWxsZWQgb25seSBvbmNlICovDQo+ID4gwqAJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBp
bnRlbF9kcC0+ZHBjZFtEUF9EUENEX1JFVl0gIT0NCj4gPiAwKTsNCj4gPiBAQCAtNDc0OCw2ICs0
NzQ5LDE0IEBAIGludGVsX2VkcF9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVs
X2RwLA0KPiA+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcg0KPiA+IMKgCSAqLw0K
PiA+IMKgCWludGVsX2RwX2luaXRfc291cmNlX291aShpbnRlbF9kcCk7DQo+ID4gwqANCj4gPiAr
CS8qIFJlYWQgdGhlIEFMUE0gRFBDRCBjYXBzICovDQo+ID4gKwlpZiAoaW50ZWxfZHAtPmVkcF9k
cGNkWzBdID49IERQX0VEUF8xNCkgew0KPiANCj4gSSB0aGluayB5b3Ugc2hvdWxkIG5vdCBjaGVj
ayBlRFAgcmV2aXNpb24uIERQX1JFQ0VJVkVSX0FMUE1fQ0FQIGlzDQo+IHN1cHBvc2VkIHRvIHJl
dHVybiAwIGlmIEFMUE0gaXNuJ3Qgc3VwcG9ydGVkLg0KPiANCj4gPiArCQlyZXQgPSBkcm1fZHBf
ZHBjZF9yZWFkYigmaW50ZWxfZHAtPmF1eCwNCj4gPiBEUF9SRUNFSVZFUl9BTFBNX0NBUCwNCj4g
PiArCQkJCQkmaW50ZWxfZHAtPmFscG1fZHBjZCk7DQo+ID4gKwkJaWYgKHJldCA8IDApDQo+ID4g
KwkJCXJldHVybiBmYWxzZTsNCj4gPiArCX0NCj4gPiArDQo+IA0KPiBSYXRoZXIgYWRkIGUuZy4g
aW50ZWxfYWxwbV9pbml0X2RwY2QuIEFuaW1lc2ggaXMgd29ya2luZyBvbiB0aGF0IERQDQo+IEFM
UE0gc3VwcG9ydCAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNTY0
MTcvKSBhbmQNCj4geW91ciBhZGRlZCBkcGNkIGluaXQgd2lsbCBiZSBzaGFyZWQgd2l0aCBEUCBw
YXRoLg0KDQpOb3cganVzdCBub3RpY2VkIGl0J3MgZGlmZmVyZW50IERQQ0QgYWRkcmVzcyBmb3Ig
RFAuIEkuZS4gbm8gcmVhc29uIHRvDQphZGQgaW5pdCBkcGNkLiBTdGlsbCBwbGVhc2UgY29uc2lk
ZXIgbXkgb3RoZXIgY29tbWVudCBhYm91dCBjaGVja2luZw0KZURQIHJldmlzaW9uLg0KDQpCUiwN
CkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBCUiwNCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+
IMKgCS8qDQo+ID4gwqAJICogVGhpcyBoYXMgdG8gYmUgY2FsbGVkIGFmdGVyIGludGVsX2RwLT5l
ZHBfZHBjZCBpcw0KPiA+IGZpbGxlZCwNCj4gPiBQU1IgY2hlY2tzDQo+ID4gwqAJICogZm9yIFNF
VF9QT1dFUl9DQVBBQkxFIGJpdCBpbiBpbnRlbF9kcC0+ZWRwX2RwY2RbMV0NCj4gDQoNCg==
