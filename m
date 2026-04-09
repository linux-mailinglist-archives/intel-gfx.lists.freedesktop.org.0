Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IEMOUW012kORggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:14:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6EF3CBD66
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA6710E800;
	Thu,  9 Apr 2026 14:14:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1OXW6vC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22F410E3AD;
 Thu,  9 Apr 2026 14:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775744066; x=1807280066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V/+ksbRQV3xiZZGlC/rdAz+T/wAnyViHFQuBaFetZ7s=;
 b=I1OXW6vCj4NO/zNZ0HLEtvz594WeRkHzEG6j8ubMt7O0DCTP2fpttRLB
 HXgNdgqkJTPKjAU705Nl9/RDEyyIz0klRF+SvEVQxw1hiYzBYg371oE7B
 6DMgFzAw9Qsq3gK5rmDg/LGN8YvY0rzkZ5iLnNbyy6aCD6E/mWqss8rgX
 yOzKsYxnJsnb8FXBJh6tBb/mcuXw/rxfJtuFezzVKZZPCsSsYldVv2lgK
 fSmy9oUhGHX//OaLAOHfsp1+voFIP8rqQvOAUZEOCLOPWqI+uqNGV6WW+
 fiaIDzIIcVqNUsJbMs95jeGIuqSpGBNKBoX1rml3hei/lq58oVo6zmCYN g==;
X-CSE-ConnectionGUID: Y253f8UFSNi7BtdEpWGidA==
X-CSE-MsgGUID: 8KDIa8ZLRvKd/n8RhrCojw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="88195287"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="88195287"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:14:25 -0700
X-CSE-ConnectionGUID: R9atpM56Ql+JQ+W3UELd3w==
X-CSE-MsgGUID: GxwUqphhSY+7HDzOI27I1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228671432"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:14:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:14:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 07:14:24 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:14:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fhZbcV7yvL8cKBRVye0FjG1FC6Q8S4GI7NizuVxrM3O/su8gXBHF9Ge1Wna8JTZZ0G9sHkQyi2w/4dTa5DE3QDWushlZaQlcFbgef868IRhHjPBq4bF/kwdKXCyTcJ3/eQs6fSnbnr7jrS5u/wF6QG8WWNiK2sejZnzDUqcmhiRgYTzsPd1dyoDgS8FxZ/vESQru4+pw798KmnKBiTABOpWXXZ2uzWASp2Xzvh+zGdPxhTW0SQxMNZnDQAFdLFQHj/vhAnmz3wrzWVjuC2zNc5J0nPNQlk/peZRiTu2NQjBD+3K0xVxf+j1FVQTXPYOxNVd878Mhw5sP3VROtvSQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V/+ksbRQV3xiZZGlC/rdAz+T/wAnyViHFQuBaFetZ7s=;
 b=MsSSAdA2+WoyTopLhiO5aFyuHY21jvEIqU9Gl587J9t+TDSqO+4H6MUud+2cuvhoGyD21U+a7jHCALhodKh7MUB47CvG+CHTtjrGUdqBZ71XqgKazCHJzIqyqhs0ayBmSmMEJr7Mbulbta+i/ANX7IyLYIRvycBPz74aGC+LPWyC3GWltsw9HE9NqovGSWLMUMin6u8MmemBg3jpOFpxcj/PiNhyN6JBnKqmh0o7nwX19I7JXk0i1Z6roB0o982M8dMKcU1g6saitKqQFx61J1aK3e+jPjZHbouFoqiFoSe0sRddafqbHQ4r7MhwoiKxJYlX1jol2oysWeZM9rQmXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH3PR11MB7769.namprd11.prod.outlook.com (2603:10b6:610:123::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 14:14:20 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 14:14:20 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/mst: Remove redundant has_pch_encoder=false
 assignment
Thread-Topic: [PATCH 2/2] drm/i915/mst: Remove redundant has_pch_encoder=false
 assignment
Thread-Index: AQHcyAjmT3AxM5uxrEOVh/9AZ+0EGLXWxi3Q
Date: Thu, 9 Apr 2026 14:14:20 +0000
Message-ID: <IA1PR11MB64679F8D4C7DEF8F79AE7FCBE3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260409100841.1907-1-ville.syrjala@linux.intel.com>
 <20260409100841.1907-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260409100841.1907-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH3PR11MB7769:EE_
x-ms-office365-filtering-correlation-id: 961f77dc-329f-4d38-5bd8-08de96424add
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: unSko+KNoDr4rjmitibyIx+vsQgGE9sUCc1HpeR80+LkWBMrueCyw7nhtRLnpODvzhS4vGV5sSu/RRJ5drHiRNEd9MeuVoAW4Ji+5hIbrU/ViBGBAc8+N4TTTImrwb38cRtm46MTEO7XU9Wlf0iONQhR5SLAtvhuYj4+XpcaVSJopwY/yB4fbOmWxVjBQd19+ht49uvvdKZkkTdBK4ti6i/Q9k1QGpbooDBJVKfOmZpjkwN+T5YLzvDo3sHPle4Ob1sYPLHD/JyvgwTwjp+qpP8wZHHna7MCsvMh9xsSdNGOlokJNt02FJZg45X9ma6y1LYaN1ORcNR3J8ElCKJuOIHQKx47+jeS2ARRg30VvX/oX+vQDvdALQdLchsqbMnhalF+LVwxxFcMDrTZM30Bkapm2NzmTWrUB8nvA6lDBSdMYsfR7LbMueIXspnz03Z3/dPXyu/bJd9vJok2Lal7rKbVIIuMJaDbJnxmg1xQcxjVjboaoSL5WN2olETAuGKp06aPZJKrAtnaOcBL7iZVbTruMgAmzzp565rAefFnjtv+rObV5pe43mJrY2zTB0A/ZzjOQBNiuaoV29mezjJzdrDjwop6DcclT/cz6q39soRLY1mKtx7FCrsIyQ5lAusE1YhZOy/Gx4MeVoO0X59IJjsakmqoBmEa0DgW+YDleV2h+qNTaJLa2HNihyNUycr/UR7JZ0CS3daqkg8l1i35GhRBtXUb1RIDqW1R3bh3SxMOz6bXGeSG2jz0DKjBT7n5oT4rJktgA1NuARsEdwW9dI8XHy7/hzEdtCcaZnVpcv0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0NDUnFDN1lEWmpqVHhlTGd6Ry9LZUNucXlKUjRpdzJKOTB1UHUzc081NklN?=
 =?utf-8?B?UjBuUEgyRDY0ekpSOEpIUlZiRlk3SkhKRVZhTjVnSlNCZCtXZ0x0WUJscXJz?=
 =?utf-8?B?QyttQkpQUDJGbTUrSG5od2JnV1E2Y2VDZHRBLzBvL1JUbHhicnpsRmdHQlp3?=
 =?utf-8?B?dzkyeGJtTHZjQjJWUi8zcVZtNDdTSTBYcnMxSEh3UFhwWGt4SGFJWE9QYWxh?=
 =?utf-8?B?QXEwbXFRRXJzUTZyR202Y0V5cHUyMFArUFBKZ1FFdXNwWS8xOHA2MEVObjZI?=
 =?utf-8?B?QTROUmFUdlMrV2tBY0ZaaGlnQWw5M1I4M2YxSW1rVVBXSjQwU0pBaEVIOGEv?=
 =?utf-8?B?Zk9pNkN1Ti93a3hmTmVwbGt3b3lpR0FRWTlUV2xacGpGcm9CY1VoNjNGa2E4?=
 =?utf-8?B?akhSUXZBaitPZ0NVVzhrWWxxYXVDbzQ2YTlaNnVqdjBDZFNZeGthK1JNQ2Q2?=
 =?utf-8?B?RUFoQVBoR05KdkRLNEFuYXFxNFFFT3JRZHYxVlY1RnVxeVFuVUFFWXg3cGwy?=
 =?utf-8?B?dHpwdWVvRFhmejk4MWFDN09lNjNoZzBiZUwzNTZldkYrN3Y3REVuYi9USndC?=
 =?utf-8?B?d2tDNTF1ZWgwRk83SzB6QUZnY2ppN1hsMUV6WUhydnBuU0tKZFpEU25lei9K?=
 =?utf-8?B?MnZKTW1sUUt2VVJMZnBwL3A4eWRjZFVrK1pmZWJETGR5Y2JkOWh0YXRmZDk5?=
 =?utf-8?B?anRVNEJ0S09KUEU0ZmZ1NEx6MTFRaytDS1Bkd0Q5SDJ5bUFzQXd0Z1I1ZGo3?=
 =?utf-8?B?eGxYQlNmOWZ4M3Q2L1Q5c093WVg1MGN3VTJsVG9XQmNDUi96VDdMSkdqVXg1?=
 =?utf-8?B?RHdMWHM4d3RKOXR6VlhOd2MxMXRDZkhCR3VyL3ZQczdWK1pkcXpLemtCRWNm?=
 =?utf-8?B?QjRURkRqVDlPSC9NR2xEUkhjcXlrWWZZc3dyZmgwc2g0MDlic3puNUtaUFp2?=
 =?utf-8?B?Z3ZDM1VCay9LU2JhNlA5emtPeVcwRU5ZUXFvTzBzTFFuM0pxamlCbVUrWi9M?=
 =?utf-8?B?Y1ZYcENFYjBMZ2lXaGI5NkdVWjVNWUprZU1id2diRFpoTFBQSll2eldXVldO?=
 =?utf-8?B?Y0RXdy93UUFEUjRUWGk3U01EWXNlNDY2dENDamY4YnluSFEvM2NjL2E4bERT?=
 =?utf-8?B?VFJTQVRyRGRCR2ZQZUNhcEg0TlVGQ2F6WE1yZlVySGd0NGhIR1NDWTMyUGha?=
 =?utf-8?B?RTdMVG4xanArcklLZUFyNVI4OHVWSEZPVHB5UDZHTGJ2Vm9OZ01PbjJhZG9Q?=
 =?utf-8?B?blR5OTIwMUxpa2JSVEFsaEtwT0FBSDlVaENCWUNhNlJwMU4wQnZRMTNNSEVo?=
 =?utf-8?B?UnFFbkc4V0VCajgvUHd4TnFlZ0NjdXFFRHU4a2pjZStVMFpHTVpGVUQzMTl5?=
 =?utf-8?B?V1hOcU9JeWNHK0prcXVjT2IwS2g5R2hGZG81YW56Z1RXQklpWEFSTE1lMEdP?=
 =?utf-8?B?MkZBd2RaUHVOVGVldjVxKy9JbE9WVng0QnpOUFZ5ekVncE5uTlo0VnBtMmNp?=
 =?utf-8?B?a0pPNGNsR2RDcnplTTEwVktmRHN4SEpXMStvbzdwRVJ4UDIyWThST1FmcXB3?=
 =?utf-8?B?RmhoRTROTFpGNEFjYTByR2xFaDNGVC9hNlc0cUV3SVVSQUhDRjhtYVFoNmE1?=
 =?utf-8?B?MU1tUk1GVlZNQzBZWjBVTVl1WnNMbXZqN0N5SUQzckF2WHhRakhTZUhVZFJu?=
 =?utf-8?B?YjFLdUkzRXNoT2FVMFNDWUVlVUZ6ZDkwWEtxMVQ5ZTRhNGwvUHFIa3IrYlhz?=
 =?utf-8?B?a1N2S1Z5dUhnOXErc1FMTnVlalp5dmd3Qi9TcEZLRUovVUxjRHkzbGVya0xE?=
 =?utf-8?B?SzFIc0dOa2p4RHZWcnlFSXgzZEtDeEtUYmpxTWFlOVhZdEtDYUhqUlNudWdi?=
 =?utf-8?B?eG9uYUYwR3ZVN09QYnZIWjRkL0VNRnpJdGdHRHpOU25JcUNIN0tzSHZFdEdp?=
 =?utf-8?B?djYrbmJObGc2QW0xekgvWWE3OWhDMFJlUW1zcUhNeUpreC82blQvYXVvSTkr?=
 =?utf-8?B?TFRVQ2xOSUNzdk45SXNGZGJNUm9OY1YxbGF3YkFZbVlvZ05RQi93cVA0Vm55?=
 =?utf-8?B?a0U5MHpHa052R3V6TGhMODc4aUVJRjdQeVMxUHdBNTdwWWd6VnpCbGdBaUVo?=
 =?utf-8?B?NG5PYVc4aG1uRTN5RXZSbzAwRmRmMm9MZXViZEMvY2t6UkJVWFFld21pSlM3?=
 =?utf-8?B?ZHFYcGtVVGJuemJIcm52bmtvWklSNlpDL0NIQWlsWUNBT09nemdibDF2cmNr?=
 =?utf-8?B?OVZROVZzTkQ5TTBidUVSZ05YOVJtekZ2SnN0dngvU2N1bDhXYWo1cDNKTlFW?=
 =?utf-8?B?Y0F5aGgvbi9meVkwNEIvQ09DeFM2TkQwVkpZWmJYenlQck8vR1R6QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RszQAeC34AHeBjvNqEK+C+MygApRSkxB6t2RWT+75vd4fMxtBmamnPBFPIcJvyksrGKZHYdBTQxR94gchiqRAmFgSfixc2fgAH4iTuA/U8m5OuONJHNcg68jF6NzqOSj1kJMcAUxIA+RqJXH8tcC4BHu3O8nBiSazUNvBguJE05kbmFzSWZYnrpmEyA2S4zWqTD0SX7WLJBznLAzZJEDsrSfDzEymduAZBzt5h4PqXsMfSQ9qU3pzYC3Pwb7QlQ2tEUKtJAuzeo0W1iIxDFk6aKI9mBRZiZYajPyyiN/+IweabwxeXPu6t+Rkt+CNFBjfss8ODM+r/BzPMm1MxN8wg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961f77dc-329f-4d38-5bd8-08de96424add
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 14:14:20.1189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nc39ibeU0KtZ7t7KRK9k9S6twbHgIRQ/xHs36gEPVeH87SFx8xNqqQLcE3YdM+0OMa0kzX9OPdl8JXfv+OyrgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7769
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5C6EF3CBD66
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCA5LCAyMDI2IDM6MzkgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9tc3Q6IFJlbW92
ZSByZWR1bmRhbnQNCj4gaGFzX3BjaF9lbmNvZGVyPWZhbHNlIGFzc2lnbm1lbnQNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBUaGUgZW50aXJlIGNydGNfc3RhdGUgaXMgemVyb2VkIGJ5IGRlZmF1bHQsIHRoZXJlIGlzIG5v
IG5lZWQgdG8gZmlkZGxlIHdpdGgNCj4gY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNvZGVyIHVubGVz
cyB3ZSBhcmUgYWN0dWFsbHkgZGVhbGluZyB3aXRoIGEgcG9ydCBvbg0KPiB0aGUgUENIICh3aGlj
aCB3ZSBuZXZlciBhcmUgZm9yIERQIE1TVCkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAxIC0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5kZXggOTE1MDc2M2NhMTQzLi44MzJhNDNlYmUwMGYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0K
PiBAQCAtNzIxLDcgKzcyMSw2IEBAIHN0YXRpYyBpbnQgbXN0X3N0cmVhbV9jb21wdXRlX2NvbmZp
ZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gDQo+ICAJcGlwZV9jb25maWct
PnNpbmtfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7DQo+ICAJcGlwZV9jb25maWct
Pm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsNCj4gLQlwaXBlX2NvbmZp
Zy0+aGFzX3BjaF9lbmNvZGVyID0gZmFsc2U7DQo+IA0KTEdUTSwNClJldmlld2VkLWJ5OiBOZW1l
c2EgR2FyZyA8bmVtZXNhLmdhcmdAaW50ZWwuY29tPg0KPiAgCXJldCA9IGludGVsX3BmaXRfY29t
cHV0ZV9jb25maWcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiAgCWlmIChyZXQpDQo+IC0t
DQo+IDIuNTIuMA0KDQo=
