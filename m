Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kM5EEd5zsmlbMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:05:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C1F26E95A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30AD10E99B;
	Thu, 12 Mar 2026 08:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GYSNtXGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3846210E999;
 Thu, 12 Mar 2026 08:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302746; x=1804838746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ejvvEgmTgnAS0TV7kR6eWrMXd9dbBFvTTvWpXkTw1/E=;
 b=GYSNtXGassZUCdG3MaM893W1UPEFdHYdwogSt2zUES1unTs6Uhs/aoue
 L7dshEFWWAW/mx1AjawATrk7oFRtzrVkdCt39p5Co4QQLmh7VpEyJl1zF
 JXeIpTNgnpGJckkOMW5D2pyc/YtOH88TyK7/UYz7BhF7kmZFF5Hi2IvaT
 Ixbvb4hrB59+ksR0qfj5O9bF1jB9w5klSDSj70LrW5Z3RCe4RN4poqaYv
 VVhMpUHRMGX20YX0usHV7j3YntFqNT+atuuqjs3aaFU0Yju4mtngQ1rne
 Ub4j0UpbhUZ//O93984CBHneXNfxgD2zRuCvg1UkWZ2jfvUsxNqMCbWuf g==;
X-CSE-ConnectionGUID: dCZDDluhQd+54bvRwT3Rrw==
X-CSE-MsgGUID: qs3XGmjKSCmT0g7XZ//k+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78236146"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="78236146"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:05:45 -0700
X-CSE-ConnectionGUID: PrFeym/PQXaTVo+QwOZ/6Q==
X-CSE-MsgGUID: IYkwhqN0RaawiOpw+ikRQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="218565256"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:05:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:05:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:05:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:05:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PINqxzIJ8NW2J6kt52xBcAwPZu09uxfsQH7v5yibust5blgPnNQDVQTzFCjxv0DkEu/d/ZeGjx3RzI9N/KFRxbDgs85NZpXDCQC58MBayqXRhQb+RDUxeHeswdg59s1As53DQu1Pbl6WSS18dQXEsUCqIiD58yzDBPBGz/m5xqICvY8rXmly5WGrzevyvlFdAT3mZVIZtahjYxiQhAldFcxbFaVrhqYbkLav85agiDNY9fS2G3kGbFWxYiqjST3izakJD+LmLwxwd5KU6mtGEty78iQZdeqqpSSKtR2+XWvt0O7fWFzWQgSoj8tLs33dBxEs3BkR1qo6bOcAaAJExg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejvvEgmTgnAS0TV7kR6eWrMXd9dbBFvTTvWpXkTw1/E=;
 b=jAw1g34U7aI5fOcroee1LydLVYkacRDIBIb9qA/h93TQ0HtbqRyiluc6NKveiA4FBvnlZB9waR6j4lYDMQcgbAGbX1WFdIztobN43yvQfZXtqfcv0lqeXiNS6t1uaAGaYr8J+K+ptKwXjYaW9wolqBQquk2PC9mhd9pVa8McHplNddqRsbFNWvOuElYfaEiCOXLbwp3ib2ejACQlewHT7vrPcq27k1/gYXbKCZjoW5peMAUndBwtHzD83FeQvXn4E/k8feueqBLAxXsKYicYiw9VmsaZikZUN5r69m6LonzFTj1HLwAGOGt2i6brhgbTlUcQibtM2D9i0LkahZjPeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7260.namprd11.prod.outlook.com (2603:10b6:208:43b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 08:05:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 08:05:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Topic: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Index: AQHcseFtvVqfVU+4l0S51ihL3Qu0I7Wqij2A
Date: Thu, 12 Mar 2026 08:05:35 +0000
Message-ID: <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
In-Reply-To: <20260312050035.3493690-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7260:EE_
x-ms-office365-filtering-correlation-id: 18a027b5-cf95-43b7-834f-08de800e23ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: xWXGnqIVtZzsGofp03YgqOYbcFPQ4/yBQYBpSxHOPxioBi/BbSCwRobGtejDHwvc534IZNtbRC0ZlVWI9/XRwwrtyGOu8chQGoS2Q1AyMAwCNkoRyQ+vF65uFglrZOgjumAUf+8qepKXxNYSsrJm42dfy1Rg56M1zoL1UlGUi3Gxfxlu1P/26tfWbzXnrD6xXFJhdLRLQKBFI60YtYdTaDPLUNL5sShqS0D2UONaeVgGf64jj5E048pKmlpJrDay8L/cHM4xm9fd3TUyoXfLQlBtRbp/Ej5PiHpqTB8KudspsW6WRo4hGQO84LUiy0tjTufq4T5O096u4lJ4IqjOc42ZpPSrrzZN5rysWrpSwyUzU4M0eGdOILqZYO90pKKx5YgkzWF9tdhpn2uvcs4RZna9Ld7LySwUgcxTp/mMoLOrbH61ezHk2TdxkspC53c46Gitja7+M6bWOWbApd4uSj/q98sBXw4c+TT/HwGafj6KrZ/tu+ct+CQ8s61BdUhJ1pjRmywN+qRPgHO4ekUT+nXFVvpLBuBA+q5Q2Ln0zqpbV/cW1ps8mJLuIPISB35jJZOYs45g/wy+vVTUn1BOZxf47kmVMWOAaqrzffEHgv5HqhsSolMMkGF1AL0QYc9xlCBoAiesxPeU2o2fdF1cX7V1loldhnDJV4Q1zLQjvEDOwkT6kaH8QCO8nF1irRFjuigA21ekaJET72RuOCN5tTyRCK7mz9p+HbNbjTKrq3VLQRpcCbPBr0aGWmBT+WI+QQk0OLbGXdh5KLvTxTInxN4QgjQUyrtoM39P3fQX/NA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0ExRFdaQ1p4OVpTUlBTdFpWL1NrSDhXQWhYbG51YmFLZVJ6WSs5VkxybUgv?=
 =?utf-8?B?S0VacUhFV2V5ckhNbHQ0a2N6cysyeVFBL2VybDJBcG50SXNlZS9JWXdIS1dJ?=
 =?utf-8?B?Y0ptSlZEcm4wWm5wWHhDM05GanFaaTgzRXM1Vi9YT1R1a1BTUjhMWDZiSmt0?=
 =?utf-8?B?QUMvbnN2Yk0rVWRKNUcxR0tKUlJSaWdZVzZ6Mm1tTC93RW9GRnJvMjlOblFj?=
 =?utf-8?B?TWZOQ1UyTVhqeHFaNkZWOFpqZXRsdC93OGMvZWFCUUhoSXkzeUdKWjl2Ri9R?=
 =?utf-8?B?Y2xmUmVLZ0h6RVQ4VXJIVUpmQzUwbFNVd2xvdloxdThQc3lMTDJUYnlpRnZs?=
 =?utf-8?B?aCtkbngrN2lUaTd2aFRNT3F0dU96VjZlREhUWWFNY1I4YytwZ0U1ZTRZNEd3?=
 =?utf-8?B?VEpzcDZhbm5TWHgvTkZ4SGxaWGhtcngveGlZWmVKWE5OSlJzSmtmelczd25l?=
 =?utf-8?B?NGZGZXdJWjh5V3d0Qk1GK0lCdFFaaUFsc2hIbVhHOW56aUVFeW44SFd5cW51?=
 =?utf-8?B?QzF6WVl1M2djelZQRWRkUjIzOHdjUW5PMkl4V0MzTDMrbk9HQ1c0TWNIclRB?=
 =?utf-8?B?SGxvNHgyNko2a29ZUGJ2c1h3SSt0ZUZURXMrNUNRbDVtR1k5K2JwYTJuc2dz?=
 =?utf-8?B?MHRVVExJRzZ0NXZFenZGdlM0ZmgwOHNRNHNtdWQ0NytLU1plbElNd3pIUDZP?=
 =?utf-8?B?TEtFVTZUaU9sVzByME1aZDluU3pzUVUxUXBTeGorZHUyK2tJaEtBd05RMWI1?=
 =?utf-8?B?MVJuVjk5bnp2enA0S1BsNjcvS1F1aWVLQ2dmU3F6RmpFNWVCdzcrL0p1aG92?=
 =?utf-8?B?V2VzZjBYeWIzNHNWUXFnbVREckg2MmxYbjZzbXc4bHZ6TDZjMUJZQThDc2Nm?=
 =?utf-8?B?NkI5SnY1YXd3NWd5K0RRTDlRZ3ZaSDJKZWxjRk1VcEpqTnRBcjlqSlFTOW1n?=
 =?utf-8?B?Q2N5SCtrSzRpYXRTYTR0RG94RllZOVU5bFVYOFpOdjRVQXZLcWtEMGhqblR5?=
 =?utf-8?B?OEVLY0NBRlYrc2k4MXNheDZTQThqMlRlc1VVQUJmZE40MEthR0FXaVpRbFRV?=
 =?utf-8?B?bFQ0dmhaNXJOMSszbEF2SWNOSHRSWkFCOXNQL1dGY3hQQVkvL2U3czZCNzhW?=
 =?utf-8?B?eXJjU3V1eXlRczhaZ2NhQWZYNWhpdllsRWkraExmSW9RYm1TVXJma0xydWc4?=
 =?utf-8?B?TTNRTnZJaThSU05yY0xjYllLNjdZWDRBTnBoVWlWUHJhMGc2UkJWazFpSG1l?=
 =?utf-8?B?U2YxL3FvOFhUODNMeUFORk04OEdtTlB6aWVzT1ltOGUveEQ2clpyNXN6SU9R?=
 =?utf-8?B?a2lsVEtxV2J4a2QrQ0sxRGcvK1dYZUdiNlJySUFicmJsNklRYkQwbU80eTQ3?=
 =?utf-8?B?eVdxQ1NycHBXM1FrOVIyWjQwa1RJelpCa0MrMUp0R0I1Z251WWJocHZaTFhO?=
 =?utf-8?B?K1ZlMlV4ellvanVHbnpsbmZkMkNhRHFHdkQ5L3lGZDRiY04rTTNaZ05FMU1U?=
 =?utf-8?B?cGQybk4wWG13Uy9iLy9KUGh6U2hXN3dNdUd2RTQwWkdPZVVYd0I2RXA2U3o2?=
 =?utf-8?B?Qll5WlFpTlVlWkZuK2M5dks2Q05kdXVoSTdiT0c4cjBtbWJWSnVxTGhKVUhN?=
 =?utf-8?B?ODVTRTlpNWpZYWtVYUNHTmVEMnVTbno3ckdZM3F6Umpya2ZXMmR2dlFMTTAw?=
 =?utf-8?B?QkNUeDRlOWU4aWRlVVpPN0YydTJQVzJkMXpNMWlBZFBHbkQzOXJXRG85aUgz?=
 =?utf-8?B?MWdKbkZreHoyMWs5alRrbXFWb3oxYjhTUHFNcVlRVjFYcFFjWFB3Y2xoQnlq?=
 =?utf-8?B?aEJWZWhNRk1ROXI2WkkvVHJFdForWk02aGI1OFNsOEtibnBqRnQ2Uy80eUFz?=
 =?utf-8?B?eUxYNXRRZlJoZXNBdmY2Y3ZaeWFlaWU3NHF6eStFYlI2UG04Z2tZVWdxdEw2?=
 =?utf-8?B?U1JBaS8vTGJCMHpaUDNZL0N2WXJTd0c1RWNKOG9nejR2b2JYTzJsRUJON1RH?=
 =?utf-8?B?NmxiTmtaMmowRlc0L3hWd0E5OHEzTzdzYW4yMy85emZQdER4K0NKeTFONllq?=
 =?utf-8?B?cGpYcDRZQnRpUWdScXF4a0d1MnpkencxN0dGcUVBcEdPZWUwWk9aeE81NnFm?=
 =?utf-8?B?Vm0zRW5TOHJRaUJoMmZ3YWE4SGFwSU5pWVNYVlY4M25vZGJYOEQ5eFV0TGhy?=
 =?utf-8?B?U2E3S05NSVlUa093RnMweW53NVV3R3IvUm1Pc1Q3RFZwWG9VcVJOMmQxWTZK?=
 =?utf-8?B?bytnMmpJaXZyV2FvbzhOK2pyS0hKcUd0eHFtV0tHc3Z1eWFPY3hmdzdFaVpi?=
 =?utf-8?B?dE1pZkp0RDA3RVJXcWtzNUI3MHd4aURHVnNEMklncTNFQWh4MjYzRmRmWGtI?=
 =?utf-8?Q?e7K8kVhsbHgWhXkJ4a2WtjqG3LhlLoZU6d4fkwU0pckrK?=
x-ms-exchange-antispam-messagedata-1: sOpr6OkfhFaKziti+ifggzGIozEQXN74uqI=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D782F4D1C13D5D49BD62CF6467BD360B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qsPH+v4a2dKj1oXrx76x5bGGyUMARAW8+pFlKd5qYy72lBmQctsPtS/0MjJxE2i7DFFrQXGtvhnUYGw7xRMrD/8zZKhCWZmzULLYmKFKL+L1Wnl4eAmXj+FEkp7RbQkTKa8ey6mi7hyyVCaYyoln8Y8fSJ4OTI/IFzF+ZSnS0b8awNUcWIOlNGtMEDZvuSv31by39D6T4uQV3vXEhWGCB3hx0fi+wIF1mSnJzzxuZnDfm8gQafnFP/5drAPjyRQiAt3VjLJNmxnjvsL203gsMytZ92stfaZKXcKePlQQeyfBeeywuEQAxIxwYZSy7apcK3WX+c4UpOSXFngiCrQP7A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18a027b5-cf95-43b7-834f-08de800e23ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:05:35.1466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dBdmtjU+PdlGbF5XuzZkf2qsW/llgIzTbvawjJ8isBOZHX76Opk6sUfreWD9fj9vvi+jP6s6z5uEJ6afFENLzmC09QKF9UchcsTRTi7rmgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7260
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B5C1F26E95A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBUaGlzIHBhdGNoIHNlcmllcw0KPiBlbmFibGluZyB0aGUgc2FtZS4NCg0K
R2VuZXJpYyBjb21tZW50IG9uIHRoaXMgcGF0Y2ggc2V0LiBNYXliZSB3ZSBzaG91bGQgYWRkIG9u
ZSBtb3JlIHBhdGNoDQp3aXRoICJGaXhlcyIgdGFnOg0KDQpGaXhlczogZTYwY2ZmNDUzYjgyICgi
ZHJtL2k5MTUvZHA6IEVuYWJsZSBEUCB0dW5uZWwgQlcgYWxsb2NhdGlvbg0KbW9kZSIpDQpDYzog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwu
b3JnPiAjIHY2LjkrDQoNClRoaXMgcGF0Y2ggd291bGQganVzdCBhZGQ6DQoNCmlmIChpbnRlbF9k
cF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChpbnRlbF9kcCkpIHsNCglkcm1fZGJnX2ttcyhk
aXNwbGF5LT5kcm0sDQoJCSAgICAiUGFuZWwgUmVwbGF5IGlzIGRpc2FibGVkIGFzIERQIHR1bm5l
bGluZw0KZW5hYmxlZFxuIik7DQoJcmV0dXJuIGZhbHNlOw0KfQ0KDQppbnRvIF9wYW5lbF9yZXBs
YXlfY29tcHV0ZV9jb25maWcuIHRoaXMgY291bGQgYmUgZmlyc3QgcGF0Y2ggaW4geW91cg0Kc2V0
LiBXaGF0IGRvIHlvdSB0aGluaz8NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IA0K
PiBBbmltZXNoIE1hbm5hICgzKToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGRybSBoZWxw
ZXIgdG8gY2hlY2sgcHIgb3B0aW1pemF0aW9uIHN1cHBvcnQNCj4gwqAgZHJtL2k5MTUvZGlzcGxh
eTogUGFuZWwgUmVwbGF5IEJXIG9wdGltaXphdGlvbiBmb3IgRFAyLjAgdHVubmVsaW5nDQo+IMKg
IGRybS9pOTE1L2Rpc3BsYXk6IERpc2FibGUgUGFuZWwgUmVwbGF5IGZvciBEUC10dW5uZWxpbmcg
d2l0aG91dA0KPiDCoMKgwqAgb3B0aW1pemF0aW9uDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9k
aXNwbGF5L2RybV9kcF90dW5uZWwuY8KgwqDCoMKgwqDCoCB8IDE3ICsrKysrKysrKysNCj4gwqAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmggfMKgIDEgKw0KPiDC
oC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuY8KgwqDCoCB8IDE0ICsr
KysrKysrKw0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaMKg
wqDCoCB8wqAgNiArKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgwqDCoMKgwqAgfCAzMQ0KPiArKysrKysrKysrKysrKysrKy0tDQo+IMKgaW5jbHVkZS9k
cm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmjCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKysr
DQo+IMKgNiBmaWxlcyBjaGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiANCg0K
