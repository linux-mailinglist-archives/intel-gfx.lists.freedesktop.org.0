Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC39E8402E2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 11:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE291127F7;
	Mon, 29 Jan 2024 10:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5D111282D;
 Mon, 29 Jan 2024 10:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706524598; x=1738060598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mq6N+TA7H9mmHJTpMeqlv+f40rh8rr/oBk+/dvk8kWA=;
 b=OSfFJf989mCc9Ux1hB6Zz11ipwgl8HHTeTljo7+ZCDslDRCT00TR5pxs
 FAwMjB19TJO3Oqn5tzjZXXlxjla8CFO8QSAMO+leqK5yRFcdfCc9kXmpH
 S3o1PQVqNhP2FpFAwzfobpbqxv0Jsia8u8p8uqgv9M98Q+gNtsapdZfx7
 guEM/vQsSY0M+d2Szuyam+lVcE5n1wXBxGw/AJfSc9bDScuctOhPS+zBU
 /Njc5Z1IaMeO6A34212qKzM2C032Z4STlos9x4wGc98BFZNA118ItSDUJ
 z84NckKTxgX8vq/QZkCpHqandn525nAgvv0o2boUlw9DEMME3n83VDGsZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="2778226"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="2778226"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 02:36:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="1118899923"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="1118899923"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 02:36:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 02:36:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 02:36:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 02:36:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 02:36:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYUR/bN+GkGwYvvcttBsH6n4HqsPlnqQKYnjGyHEmP2NbS1EAT/NfAlNCTuzpVgA4t3qg8Mb1JoxdxFH7QAnM9lRNpJ3u1kFQDXuJJ0MKDQbxP7T7VWS3JgPlhjw/I82Q2IIYYdFjW+cSTUDFi+TKlUdEPKveueZYEZpcW1W2uCW9UC3qFD4hyV3DlopstfXCQYiFYipfQBcv7AF+jd0CWjUfxiMX7nwkUBDM+RUmat5j1bZMJVD0yThQ8nUsJvhKPEBnoSs7DSqab+e/3cfp23OhKQ4EachgqhlCil6rMqsN/WmKqu4ej37iKNfPqExFfv+JIrQpFXGfQjNZ0MjaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mq6N+TA7H9mmHJTpMeqlv+f40rh8rr/oBk+/dvk8kWA=;
 b=aE7Mc50mRztN6OjR7e1iXHeKE+RVWt8qQpLTQuu1Uy5Kfn4Lwn6f5rBpQhcKct6X+MIgZZMQb/SEvJfwR93tBqAo5vIrL1zUB8V//7OQysUj55SRpLf4yyqIo9oQe6q3b3VPkQuGlgnRqytlXc1NXS5p5kZFPDGSpjS2c/sNs2ZAgtn3YsN+p15PS5ag/16ALXeuuwsVTdt9ne4EOA7A9u+8KsUA9AMxW7h7cv9iIJL4zzLH5LGSg8UmqJ6CROanV6AbTNOu62Hq2Y9U2VD2sGsggIHSnBXu0qr9yKSBDxfiWuGBJTisb/rqRIlYid7N9DkdpeYbl16fCmw8/QuhQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6450.namprd11.prod.outlook.com (2603:10b6:510:1f5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 10:36:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 10:36:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 03/19] drm/i915/dp: Add support to notify MST connectors
 to retry modesets
Thread-Topic: [PATCH 03/19] drm/i915/dp: Add support to notify MST connectors
 to retry modesets
Thread-Index: AQHaTecDv2L7u7JuNki1iP765BGtcbDwoiQA
Date: Mon, 29 Jan 2024 10:36:12 +0000
Message-ID: <d4db6d48a3397ebaa95a56ad63bf59d4fa0af01d.camel@intel.com>
References: <20240123102850.390126-1-imre.deak@intel.com>
 <20240123102850.390126-4-imre.deak@intel.com>
In-Reply-To: <20240123102850.390126-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6450:EE_
x-ms-office365-filtering-correlation-id: 0cb0e53e-8dee-410d-861d-08dc20b61d7a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +TpnNAPQk0xKfu8RFKgwc0ch6JXHHBOjtPH+MkaqT1vnChgacxMCLAPXhmv/ymkX6svcrsAk3v3jnNQoxi1yup0Es+mB6GLnBK4mgpM8sYizvYAyqsS4XQ/EuvRfUV4xDLDgKYuVtCH3oMoNgd9RiYT6yexJ8/MXNyH84TiSxurSw//VuxHkLW1KJR/DpC+g/tHLPJTJ8k4JFZqE/s4pJtHIrRTSYLzIDPUU08QOKEfvebQ3aN1J9Vam3foMO5iIpnNC9ZNgpaKBetlzzQJNuPhS9LgO89PfBVSmR0023DgkSCTvqjePwEz9fU8YnkNmY4hL8P1NcqVYpsgyp0o0E3gHNv/vO8P62eaaVTY4R4SUd8bqOqpPZ4pFYDcsN/4nWsj5BYz/J3B4Hv1nKiP3Bfx/BTCnY34Y4uzuVW+SoqGhWVq+fNJT4/IOtzM58wO7d2n5TCHPb9DLZWZSLxK0pFZyqX8wQSBC39h3Im1Tk5ZmR2Z1Vqin8yreEPY2edUwzbJgiREruSueeL+v88pGBFgepVS62xZNflMoKY7XNpbQUEa7p6U4I36BIeZ9hGh7wZVwVwQzd4TQb/cGIcAApE2aJ0fmY2iPeGwIevTcVcpJvPiVPZwfIic80cMniQl7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(39860400002)(396003)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(2616005)(66574015)(6506007)(71200400001)(6512007)(122000001)(83380400001)(5660300002)(2906002)(41300700001)(4326008)(478600001)(6486002)(76116006)(8936002)(66556008)(8676002)(450100002)(66946007)(91956017)(110136005)(66476007)(66446008)(6636002)(316002)(64756008)(82960400001)(86362001)(36756003)(38100700002)(38070700009)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0o3T3EyMHArQ2YwUWtHUUxOejl6YUV5eGtMdi9qN1kwcS85THdPRm13T1Rz?=
 =?utf-8?B?bUZpWm0zVGZtVzhnMTVNNFFEU0g0NWpMSGczenkvUVFvbTAxWEdjRDd2eFZ5?=
 =?utf-8?B?eFB1Qi9LaXJ2Rkp0Qkl0Y3lqblBDQUwxM0M0OGFRcUdMckRoSGRTb0syUUZW?=
 =?utf-8?B?TysxTEkreXNDamQwTlZiYmFuQWxYN3R0T3htRmRCMkJCMjIyM04rdlF2K0NJ?=
 =?utf-8?B?Vyt5V0FaVWs5YklEbytvR1RhTktrSUN0VWVaeGQwdmsrczBiNUh4SElsWHZa?=
 =?utf-8?B?c0Fnai9oRFRjajV3dERNTmJnc01mcnRFYjRkOHRHRVNLYi9ZdUpHWXBLY2l4?=
 =?utf-8?B?YjZTMmc4TlVTQ0FsUEI0QWNLQWRSRCtzOG5KbENGMHEvSjZlb3lBcm92TmNy?=
 =?utf-8?B?TUQ5aVorcFQ0ME1BbEJCanRSN0EzRjQwbzdNWVJ5L1luRXFnVzNsbUQ3b3g0?=
 =?utf-8?B?a1NLNUllSjI0amx0enJLWEF3RS9ubGszQzB3dVhRSkFSMk1jUzM1RU1zTjJi?=
 =?utf-8?B?b0E0L2hTSUJpUndvMll6Q0VoelJZUHU3RlNCUHNMbFgyczdtOEY1Mk5YdjVR?=
 =?utf-8?B?Mk5DSnUrcnlmMnJta3RKRWdGMDFEbXZWSjkyN1QyUEZWb2NoQ1NLMHFoNmln?=
 =?utf-8?B?ZjdVMnBsNlM4K3h6VkZ2aXBDS1ZqWkk1d1hoOXNiZGwvZlVOTm1JbEF5Yy9l?=
 =?utf-8?B?RDJxQVlmMHZpSmJCRk5zUEgxTnU0THpWZk54TlRpQXk5QldKelViUitQaGhL?=
 =?utf-8?B?R09ZUURtV002Tm9HWWFpM0hSUEV4NHJKbWtXWjdRem4vTkNHcG1vbkR6c3Z4?=
 =?utf-8?B?TEhGUFVMdlFTRGp0Mm94ZEVxQW9MOHA4RkJ0R1VuQ2VxZWkxR3hpV05OZ3RI?=
 =?utf-8?B?cTlaaU9hWnJrRzhoekRlUXhEaDR5Mys1eWtGd29qZDBHc281OWQ5bk5aVmlt?=
 =?utf-8?B?SmMzeGRHTUp3VkkxSGhKMlpUS1QxUW1YdkFjaUxqa3czVVUvRWlNbjhmSGVP?=
 =?utf-8?B?SG9PYUU4YkZhaWRIelg3OEQ2QzZ0d2ptSkkzeUR0OTlyZEI5Qm45YUtCY0lq?=
 =?utf-8?B?ekJXSHNxdzhybE4wb002ZmNIZDltRG5tUFFtdTZtZEpyYXNjdmhEVnAwNWVa?=
 =?utf-8?B?OVJJZXBFek80Y0U2cGUvYloveDZLQ2NzRThmb0RoWUhoMEN1b3lveXZ3UC9P?=
 =?utf-8?B?U1ZKTUd0SWIwbEhSR2k4VnhrcEpsVDZjNzZxSzhCNzcvK2tZZ2FvbE5aYVdV?=
 =?utf-8?B?dTNFbWc1akMwME9RUXorWnZBNXhJbmtJaHVoaFJHYTRjcHk3cHlNTTczZXdR?=
 =?utf-8?B?SHhkQkF2VThwbW1Rc2QyWVZLMms4bHZkblVadTNRNDBPNzJTeTVsZDA0Zk1U?=
 =?utf-8?B?RGU5TXlRUW5Vbm1BcHVwdktpUktOZmdLSUgzNklsdkRZcUplVG1nOVA1MDFt?=
 =?utf-8?B?bHFxNFBtWGdtbUJJY3R0aVdGdHJMZGRERlN4L0F4RDlidEhDWU9EZjdzNzlh?=
 =?utf-8?B?a0M1bkszekVDUjRNblFwc2h1eFkxa0VkSHloelhVNXRiRUpWeFFlMWo5bmRN?=
 =?utf-8?B?dWdyUkdXN2FiTi9IS2pQZTVyQWdZNFFWZ2JJbDZOZHVRdGdyREltWk1iRmh5?=
 =?utf-8?B?QkhuVG1hSFJFdGRhaWd3SHNhRHVSL1RMVkdhZXREUFo0eGp5SmdkUHNyNEky?=
 =?utf-8?B?cmZ2aytTVUlFSUwvQXBKRklrd2tYQ01VZ2dBeDhaMTJVeFVyVGtqV0xSdHRM?=
 =?utf-8?B?dmFxL1llZEgrSTZEWnFpT1VFeExtWGJyYmNpeTdibThWNmtFbTFSQkNtbmg2?=
 =?utf-8?B?OTI5NlRKMEx1a3BmWTE4dHcvTmdqMXdvWFZLQ2dSd1Q1d2xRNzhGSUJuLzRr?=
 =?utf-8?B?eU13Z2tURHJ0NzRGQ0p2VHUrVGZEcGM4T3VHS29sMTRnN2FzcHNlUS93aWlE?=
 =?utf-8?B?eG5ndUR0dnZnWGVsMjBseElTZzhQcWMxa3FFL3RrMWttbWdEQ21zVGMwU0Rz?=
 =?utf-8?B?d3JqMld3YytpN0dROGNnTnNBVkQ5N3RIakdJd3diQThrQzlCdUpNN0s5VW54?=
 =?utf-8?B?eExHZEI2QUYwNi8xTXZOVUY0dTNEODJmVlgwZ1g2UlZBaUxvWWZaaDdRM1Vn?=
 =?utf-8?B?c3pLdm9lZFU1SkhQelhSQWtTTVgyMjZFY09IcmFVczVFY3p2ZWNUSFdkUVNQ?=
 =?utf-8?B?Tnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <64ED42BC3E520B40B89186F408F83875@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb0e53e-8dee-410d-861d-08dc20b61d7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 10:36:12.9871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GmQKiYHqWcF4uL6LDy0vYPGNj/tpFaqNuJ+kV5gCY2goV3S/oMwPJUK9wztps5cUIdmngO5WZE88AjZNMJmtZX79bC7O7JsTAgUQ8iy6C34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6450
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDI0LTAxLTIzIGF0IDEyOjI4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gT24g
c2hhcmVkIChUaHVuZGVyYm9sdCkgbGlua3Mgd2l0aCBEUCB0dW5uZWxzLCB0aGUgbW9kZXNldCBt
YXkgbmVlZAo+IHRvCj4gYmUgcmV0cmllZCBvbiBhbGwgY29ubmVjdG9ycyBvbiB0aGUgbGluayBk
dWUgdG8gYSBsaW5rIEJXIGxpbWl0YXRpb24KPiBhcmlzaW5nIG9ubHkgYWZ0ZXIgdGhlIGF0b21p
YyBjaGVjayBwaGFzZS4gVG8gc3VwcG9ydCB0aGlzIGFkZCBhCj4gaGVscGVyCj4gZnVuY3Rpb24g
cXVldWluZyBhIHdvcmsgdG8gcmV0cnkgdGhlIG1vZGVzZXQgb24gYSBnaXZlbiBwb3J0J3MKPiBj
b25uZWN0b3IKPiBhbmQgYXQgdGhlIHNhbWUgdGltZSBhbnkgTVNUIGNvbm5lY3RvciB3aXRoIHN0
cmVhbXMgdGhyb3VnaCB0aGUgc2FtZQo+IHBvcnQuIEEgZm9sbG93LXVwIGNoYW5nZSBlbmFibGlu
ZyB0aGUgRFAgdHVubmVsIEJhbmR3aWR0aCBBbGxvY2F0aW9uCj4gTW9kZSB3aWxsIHRha2UgdGhp
cyBpbnRvIHVzZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuY8KgIHzCoCA1ICstCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmPCoMKgwqDCoMKgwqAgfCA1NQo+ICsrKysrKysrKysrKysrKysrKy0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaMKgwqDCoMKgwqDCoCB8wqAgOCArKysKPiDCoC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8wqAgMyArLQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuY8KgwqAgfMKgIDIgKwo+
IMKgNSBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRl
eCBhOTJlOTU5YzhhYzdiLi4wY2FlYmJiM2UyZGJiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtODA2MCw4ICs4MDYwLDkgQEAgdm9p
ZCBpbnRlbF9ocGRfcG9sbF9maW5pKHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4g
wqDCoMKgwqDCoMKgwqDCoC8qIEtpbGwgYWxsIHRoZSB3b3JrIHRoYXQgbWF5IGhhdmUgYmVlbiBx
dWV1ZWQgYnkgaHBkLiAqLwo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fY29ubmVjdG9yX2xpc3RfaXRl
cl9iZWdpbigmaTkxNS0+ZHJtLCAmY29ubl9pdGVyKTsKPiDCoMKgwqDCoMKgwqDCoMKgZm9yX2Vh
Y2hfaW50ZWxfY29ubmVjdG9yX2l0ZXIoY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7Cj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPm1vZGVzZXRfcmV0cnlfd29y
ay5mdW5jKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y2FuY2VsX3dvcmtfc3luYygmY29ubmVjdG9yLQo+ID5tb2Rlc2V0X3JldHJ5X3dvcmspOwo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVjdG9yLT5tb2Rlc2V0X3JldHJ5
X3dvcmsuZnVuYyAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2Fu
Y2VsX3dvcmtfc3luYygmY29ubmVjdG9yLT5tb2Rlc2V0X3JldHJ5X3dvcmspKQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2Nvbm5lY3Rvcl9wdXQo
JmNvbm5lY3Rvci0+YmFzZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
Y29ubmVjdG9yLT5oZGNwLnNoaW0pIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmNvbm5lY3Rvci0KPiA+
aGRjcC5jaGVja193b3JrKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBjYW5jZWxfd29ya19zeW5jKCZjb25uZWN0b3ItPmhkY3AucHJvcF93b3JrKTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCBhYjQxNWY0
MTkyNGQ3Li40ZTM2YzJjMzk4ODhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+IEBAIC0yODM3LDYgKzI4MzcsNTAgQEAgaW50ZWxfZHBfYXVkaW9fY29tcHV0
ZV9jb25maWcoc3RydWN0Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGludGVsX2RwX2lzX3VoYnIocGlwZV9jb25maWcpCj4gOwo+IMKgfQo+IMKgCj4g
K3ZvaWQgaW50ZWxfZHBfcXVldWVfbW9kZXNldF9yZXRyeV93b3JrKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IKPiAqY29ubmVjdG9yKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+ICsKPiArwqDC
oMKgwqDCoMKgwqBkcm1fY29ubmVjdG9yX2dldCgmY29ubmVjdG9yLT5iYXNlKTsKPiArwqDCoMKg
wqDCoMKgwqBpZiAoIXF1ZXVlX3dvcmsoaTkxNS0+dW5vcmRlcmVkX3dxLCAmY29ubmVjdG9yLQo+
ID5tb2Rlc2V0X3JldHJ5X3dvcmspKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
cm1fY29ubmVjdG9yX3B1dCgmY29ubmVjdG9yLT5iYXNlKTsKPiArfQo+ICsKPiArdm9pZAo+ICtp
bnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X2Zvcl9saW5rKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUKPiAqc3RhdGUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
Cj4gKmNydGNfc3RhdGUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QKPiBkcm1fY29u
bmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGNfc3RhdGUtCj4gPnVhcGkuY3J0Yy0+
ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3I7
Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlICpp
dGVyX2Nvbm5fc3RhdGU7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9k
cDsKPiArwqDCoMKgwqDCoMKgwqBpbnQgaTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGNvbm5f
c3RhdGUpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29ubmVjdG9yID0gdG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtCj4gPmNvbm5lY3Rvcik7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwX3F1ZXVlX21vZGVzZXRfcmV0cnlfd29yayhjb25u
ZWN0b3IpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+ICvC
oMKgwqDCoMKgwqDCoH0KPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGRybV9XQVJOX09OKCZpOTE1
LT5kcm0sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAh
aW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLAo+IElOVEVMX09VVFBVVF9EUF9NU1QpKSkK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+ICsKPiArwqDCoMKgwqDC
oMKgwqBpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKPiArCj4gK8KgwqDCoMKg
wqDCoMKgZm9yX2VhY2hfbmV3X2ludGVsX2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVj
dG9yLAo+IGl0ZXJfY29ubl9zdGF0ZSwgaSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAodm9pZClpdGVyX2Nvbm5fc3RhdGU7CgpDaGVja2VkIGl0ZXJfY29ubl9zdGF0ZS0+YmFz
ZS0+Y3J0YyBkb2N1bWVudGF0aW9uOgoKQGNydGM6IENSVEMgdG8gY29ubmVjdCBjb25uZWN0b3Ig
dG8sIE5VTEwgaWYgZGlzYWJsZWQuCgpEbyB3ZSBuZWVkIHRvIGNoZWNrIGlmIGNvbm5lY3RvciBp
cyAiZGlzYWJsZWQiIG9yIGlzIGl0IGltcG9zc2libGUKc2NlbmFyaW8/CgpCUiwKCkpvdW5pIEjD
tmdhbmRlcgoKIAo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGNvbm5l
Y3Rvci0+bXN0X3BvcnQgIT0gaW50ZWxfZHApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGludGVsX2RwX3F1ZXVlX21vZGVzZXRfcmV0cnlfd29yayhjb25uZWN0b3IpOwo+
ICvCoMKgwqDCoMKgwqDCoH0KPiArfQo+ICsKPiDCoGludAo+IMKgaW50ZWxfZHBfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBp
cGVfY29uZmlnLAo+IEBAIC02NDM2LDYgKzY0ODAsMTQgQEAgc3RhdGljIHZvaWQKPiBpbnRlbF9k
cF9tb2Rlc2V0X3JldHJ5X3dvcmtfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+IMKgwqDC
oMKgwqDCoMKgwqBtdXRleF91bmxvY2soJmNvbm5lY3Rvci0+ZGV2LT5tb2RlX2NvbmZpZy5tdXRl
eCk7Cj4gwqDCoMKgwqDCoMKgwqDCoC8qIFNlbmQgSG90cGx1ZyB1ZXZlbnQgc28gdXNlcnNwYWNl
IGNhbiByZXByb2JlICovCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9rbXNfaGVscGVyX2Nvbm5lY3Rv
cl9ob3RwbHVnX2V2ZW50KGNvbm5lY3Rvcik7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGRybV9jb25u
ZWN0b3JfcHV0KGNvbm5lY3Rvcik7Cj4gK30KPiArCj4gK3ZvaWQgaW50ZWxfZHBfaW5pdF9tb2Rl
c2V0X3JldHJ5X3dvcmsoc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+ICpjb25uZWN0b3IpCj4gK3sK
PiArwqDCoMKgwqDCoMKgwqBJTklUX1dPUksoJmNvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3Jr
LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kcF9tb2Rlc2V0X3Jl
dHJ5X3dvcmtfZm4pOwo+IMKgfQo+IMKgCj4gwqBib29sCj4gQEAgLTY0NTIsOCArNjUwNCw3IEBA
IGludGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdAo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQsCj4gwqDCoMKgwqDCoMKgwqDCoGludCB0eXBlOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDC
oC8qIEluaXRpYWxpemUgdGhlIHdvcmsgZm9yIG1vZGVzZXQgaW4gY2FzZSBvZiBsaW5rIHRyYWlu
Cj4gZmFpbHVyZSAqLwo+IC3CoMKgwqDCoMKgwqDCoElOSVRfV09SSygmaW50ZWxfY29ubmVjdG9y
LT5tb2Rlc2V0X3JldHJ5X3dvcmssCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGludGVsX2RwX21vZGVzZXRfcmV0cnlfd29ya19mbik7Cj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxf
ZHBfaW5pdF9tb2Rlc2V0X3JldHJ5X3dvcmsoaW50ZWxfY29ubmVjdG9yKTsKPiDCoAo+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoZHJtX1dBUk4oZGV2LCBkaWdfcG9ydC0+bWF4X2xhbmVzIDwgMSwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJOb3QgZW5vdWdoIGxhbmVz
ICglZCkgZm9yIERQIG9uCj4gW0VOQ09ERVI6JWQ6JXNdXG4iLAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+IGluZGV4IDUzMGNjOTdiYzQyZjQuLjEwNWMyMDg2MzEw
ZGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4gQEAgLTIz
LDYgKzIzLDggQEAgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsKPiDCoHN0cnVjdCBpbnRlbF9k
cDsKPiDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyOwo+IMKgCj4gK3N0cnVjdCB3b3JrX3N0cnVjdDsK
PiArCj4gwqBzdHJ1Y3QgbGlua19jb25maWdfbGltaXRzIHsKPiDCoMKgwqDCoMKgwqDCoMKgaW50
IG1pbl9yYXRlLCBtYXhfcmF0ZTsKPiDCoMKgwqDCoMKgwqDCoMKgaW50IG1pbl9sYW5lX2NvdW50
LCBtYXhfbGFuZV9jb3VudDsKPiBAQCAtNDMsNiArNDUsMTIgQEAgdm9pZCBpbnRlbF9kcF9hZGp1
c3RfY29tcGxpYW5jZV9jb25maWcoc3RydWN0Cj4gaW50ZWxfZHAgKmludGVsX2RwLAo+IMKgYm9v
bCBpbnRlbF9kcF9saW1pdGVkX2NvbG9yX3JhbmdlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlCj4gKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9y
X3N0YXRlCj4gKmNvbm5fc3RhdGUpOwo+IMKgaW50IGludGVsX2RwX21pbl9icHAoZW51bSBpbnRl
bF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQpOwo+ICt2b2lkIGludGVsX2RwX2luaXRfbW9k
ZXNldF9yZXRyeV93b3JrKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IKPiAqY29ubmVjdG9yKTsKPiAr
dm9pZCBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X3dvcmsoc3RydWN0IGludGVsX2Nvbm5l
Y3Rvcgo+ICpjb25uZWN0b3IpOwo+ICt2b2lkIGludGVsX2RwX3F1ZXVlX21vZGVzZXRfcmV0cnlf
Zm9yX2xpbmsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQo+ICpzdGF0ZSwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZW5jb2Rlcgo+ICplbmNvZGVyLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdAo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0Cj4gZHJt
X2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cj4gwqBib29sIGludGVsX2RwX2luaXRfY29u
bmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IKPiAqaW50ZWxfY29ubmVjdG9yKTsKPiDCoHZvaWQgaW50ZWxfZHBfc2V0X2xp
bmtfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwo+IGluZGV4
IDFhYmZhZmJiZmE3NTcuLjdiMTQwY2JmOGRkMzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwo+IEBAIC0xMDc1
LDcgKzEwNzUsNiBAQCBzdGF0aWMgdm9pZAo+IGludGVsX2RwX3NjaGVkdWxlX2ZhbGxiYWNrX2xp
bmtfdHJhaW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QKPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSBpbnRlbF9kcC0KPiA+YXR0YWNoZWRfY29ubmVj
dG9yOwo+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kaWdp
dGFsX3BvcnRfY29ubmVjdGVkKCZkcF90b19kaWdfcG9ydChpbnRlbF9kcCktCj4gPmJhc2UpKSB7
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsdF9kYmcoaW50ZWxfZHAsIERQX1BI
WV9EUFJYLCAiTGluayBUcmFpbmluZyBmYWlsZWQKPiBvbiBkaXNjb25uZWN0ZWQgc2luay5cbiIp
Owo+IEBAIC0xMDkzLDcgKzEwOTIsNyBAQCBzdGF0aWMgdm9pZAo+IGludGVsX2RwX3NjaGVkdWxl
X2ZhbGxiYWNrX2xpbmtfdHJhaW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKg
wqDCoMKgwqDCoMKgfQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFNjaGVkdWxlIGEgSG90cGx1
ZyBVZXZlbnQgdG8gdXNlcnNwYWNlIHRvIHN0YXJ0IG1vZGVzZXQgKi8KPiAtwqDCoMKgwqDCoMKg
wqBxdWV1ZV93b3JrKGk5MTUtPnVub3JkZXJlZF93cSwgJmludGVsX2Nvbm5lY3Rvci0KPiA+bW9k
ZXNldF9yZXRyeV93b3JrKTsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0
X3JldHJ5X3dvcmsoaW50ZWxfY29ubmVjdG9yKTsKPiDCoH0KPiDCoAo+IMKgLyogUGVyZm9ybSB0
aGUgbGluayB0cmFpbmluZyBvbiBhbGwgTFRUUFJzIGFuZCB0aGUgRFBSWCBvbiBhIGxpbmsuCj4g
Ki8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IGlu
ZGV4IDVmYTI1YTVhMzZiNTUuLmIxNWU0M2ViZjEzOGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtMTU0Miw2ICsxNTQyLDggQEAgc3Rh
dGljIHN0cnVjdCBkcm1fY29ubmVjdG9yCj4gKmludGVsX2RwX2FkZF9tc3RfY29ubmVjdG9yKHN0
cnVjdCBkcm1fZHBfbXN0X3RvcG9sbwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9jb25uZWN0b3It
PnBvcnQgPSBwb3J0Owo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfbXN0X2dldF9wb3J0X21hbGxv
Yyhwb3J0KTsKPiDCoAo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwX2luaXRfbW9kZXNldF9yZXRy
eV93b3JrKGludGVsX2Nvbm5lY3Rvcik7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9jb25u
ZWN0b3ItPmRwLmRzY19kZWNvbXByZXNzaW9uX2F1eCA9Cj4gZHJtX2RwX21zdF9kc2NfYXV4X2Zv
cl9wb3J0KHBvcnQpOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9tc3RfcmVhZF9kZWNvbXBy
ZXNzaW9uX3BvcnRfZHNjX2NhcHMoaW50ZWxfZHAsCj4gaW50ZWxfY29ubmVjdG9yKTsKPiDCoMKg
wqDCoMKgwqDCoMKgaW50ZWxfY29ubmVjdG9yLT5kcC5kc2NfaGJsYW5rX2V4cGFuc2lvbl9xdWly
ayA9Cgo=
