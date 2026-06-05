Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UMI+CfbTImqSeAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:49:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DCD648A6F
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:49:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="m9vzZ/3v";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46993112B2D;
	Fri,  5 Jun 2026 13:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D608112B2D;
 Fri,  5 Jun 2026 13:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780667377; x=1812203377;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jWBHBKUYniur7Whks/u41ZSbSRUkh3qfC7xNn9zuwYA=;
 b=m9vzZ/3vS6W0W4BUKH57Ake7u+Pz+O+OW0Q4+0qIZWdIRU4biKn7slZW
 VBeyz6nYrDCLkcSKBEyl6MogcVC5lcX+EdAQIhsuLouhbZWnIFbOKujNj
 5bmaSdysGm7Jy1BJRlFG3Mn0pKPAdLqs0BfYjDneY25kOQ6dbfm2moCVr
 v4ttUx/EU9jrPIvIumEIwXADFTFZUYpLo165MmE5NMxtAueeFUPbIH/B4
 AemgJjY7yWgOgpe6/Z9XITWaboW28Mzy0c5maJPj81pmanSdoNhStumsd
 ly17OxXjtVUAq3+ATdW6HR2t3/VlDNUUgmggku8khEOfxIMO4DrzeyH9S Q==;
X-CSE-ConnectionGUID: +iYK8Mt8RemwsN3JVT/Ncw==
X-CSE-MsgGUID: hggOnuWLTSCBODakJ0YMgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92184617"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="92184617"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:49:36 -0700
X-CSE-ConnectionGUID: /CL0Zkv+Qg+YElv3NiT6eQ==
X-CSE-MsgGUID: tgWdzkKOR5yl+a4hRiMKxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="249187965"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:49:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:49:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 06:49:36 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:49:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UiS/QJP5IcknqCDB6rckAMHBI1om8aPxn3hTc0z2uVgvYDkZxEIak+HLylxciB/ugvMQFQ1y9sKT9RtQxQFj4DgVYCtmpmGiQ2IZvYRjrQvFEjpLQnH6LJ1p7Gd+gBNoQGza28ctPAFs6+oETWPmXkEd/lPXRUMjxLxNuTjz06Fw5RvqhyZj0HCbplnSjuSKiP/q91UfI6yQN7g0P1dhrKc02UEhpfDkmZCo9VIdpl13Z2Atn4A0zpZjR9im8fLPGxfnf94W/bxRPIWmQ5p1HI+Xth7znUvD1FbqzfTQozRii7NEgYA16ED1ocjfJcR9onJoWQBMFbmrGtqCYNDURw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jWBHBKUYniur7Whks/u41ZSbSRUkh3qfC7xNn9zuwYA=;
 b=iS0mg38+mGu+vvT6duTZzUwD+6K3L/U6zL7DRa/qCeTJHyQg4XWYtwtXgfeQRc+B0kd1ukJ0qXCVNXBmLIm8c0V4vXaYZMquJZPc1WK1vWVW5V3+ji4pLUw+vI14J5gnRNd1YMwDZSDTr8GL88bHtD2fIrtVaJcIuuY87+CUVqGZMfl1ruHBd/24DuS9U+i5NwQhHQPdHLs9T3zp2E1+v67hKDy3xTAsJqbUlhMRyPCTn/kXEl1ucy8Ji/Mn5CkJJiC/owhzBK6UVw+enj5izRO7Gsc2JXYQKCQK47dbnaSYm/RW4uHQXpqFcOP1TTB0+r9qh4tLZS+yi/WLuv4Luw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB4981.namprd11.prod.outlook.com
 (2603:10b6:510:39::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 13:49:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 13:49:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 09/22] drm/i915/dp_link_training: Clamp sequential link
 training failure counter
Thread-Topic: [PATCH v2 09/22] drm/i915/dp_link_training: Clamp sequential
 link training failure counter
Thread-Index: AQHc8a4d4HiarilSJEihdypdSkz5cbYwANPw
Date: Fri, 5 Jun 2026 13:49:33 +0000
Message-ID: <DS4PPF69154114FD22FF10F9963F88534D6EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-10-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB4981:EE_
x-ms-office365-filtering-correlation-id: c8652229-ed82-4d3e-07fa-08dec309462d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: M+cRuXBTJ7a11EmyviTXVfx/xfhOrVBc6U/mhmQUuQHoCFiL2fwhrNtm3IEMb+T9CQYq5PilWaMfjzPZH2YaBWfAvMhaofAetBh5gigKrUMHOzzMNkGWf2uWxYNfIKCidarR5CH/l5j64L0cvcNWNGce1AHJEOKrDZS73IaOpEg+SGC20NspVKLPmw/M8eXs+lSk4fRETKGUeQ4vIFhbSMKYu/fXF4cDZMDHVjhzsfqF+lFGc5flRwTL2LpicprDB2tAm/cvjm7yN72NcxO1Ru+8TEblKUkG9TbwuDIYUXQK10ACvzqn9w1HiE2Af+Ifu7uRE8fI9HygIxWF3t4GhpXkcfM+m1/fJNUVruJ8mGR/DiXJzdBQt1X27kkIzPEw0UlhNO1QjxIfQajBNBbwHUwO1BrTY6EMlHSqzzq6aePSQ7UTPctgbXoKmc+hZmpr5O5Xh+Tqi0BGA8KxC0GoFgaRefT6H8S5H68CPrSxq1yzJrhJi2CS5E0GaPYVtCZyEzrzLg+ZdC2jRJCDHbCVr92VGtUlUY9STDjcgSku4YGjm1AypnFNBBgISvdZnR4cE1aEXi0g0VanVWw9ZSNYdssbbUeuUDWVABU+ulf//XZiM3q5M7J3olshGx/SadF7qOHNn+aNBWDflJOefxlYvhVtNQR+YHRi9fZJj+fi4rz5DK3vRImWdpnOC6I6d28DculhkRCe2VXm8ZT4LZo4EsFDEf2VpbIDZ4kM6jtTFlH7XgBj51xDYIWAFt7B+AHS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2dIVm9lUmpmZkFUelVneURHWFdRdnVTUFZYcDVJb3FVY1gyUGNhSWpnU0ox?=
 =?utf-8?B?bU9ZZ29YUGh1MjJybnBIK2k4c2FqWEw4MmNXd2ZPVTE3NWE0S0FKakx0eXVH?=
 =?utf-8?B?MWk5SXNRN1crUE96bW5DdnRUVTJSUEZ0MDhJQWVObkY1ZTliSlFzblJlMTVr?=
 =?utf-8?B?NTBVcTZzTXpUUkloOU1YOE9wNk5tZkd3SkFkWDQ2eG53L2FSM1c2UVczWEVo?=
 =?utf-8?B?akQ4eTZFZUFiQUlmZ09IWHloMHFueUtZNFdheUhhQU84UGxMMFZ1eW1ZL2VT?=
 =?utf-8?B?TjBRZGRva1lWVDJNL1ZXa0RtUDlNNm50OGdmdzFaN1poZjF5cXNMa1FlUzNn?=
 =?utf-8?B?d0hNYk43YkY1VStnK3lZKzA2a21CdUhxR1VUZ25EcEdEcnJvdHV4WUM5a1dO?=
 =?utf-8?B?YjJzUHFxQWVOL1llN0k0NmtvQ1VnZHd2STZGT0o1R29FNU0xd2hEelZnMElF?=
 =?utf-8?B?YmdST2h6QjdYdG9uV3FzMWlJTVlFSE9zUFh1WXVUbXNiVTlRUDhQUlUxWjZ3?=
 =?utf-8?B?TW80MW1tQWNjMkVnL2prYzJ4Sk9FSjI2aENyS3FDRlp3L04rblNWampKVUtL?=
 =?utf-8?B?M3pRcFNlM3J3YjRjZXNuZ29JUE4zcXJvdkl2TTF1Z0lyYWowdzZWeHVXMDd6?=
 =?utf-8?B?d2NJNVVnTVVXaHdhaFpwWWhrMTNPc3BHQnYxWDhWakNxWFpIc1hnL0lVci9a?=
 =?utf-8?B?MFgzOU8wS2dlYnk3dW9HeEpWN01WUWcrK1k0VTdKSzB0cEhUclFHZnFKbmFo?=
 =?utf-8?B?bnEvdy9tQlBMQ09QZHcxNHpoQU15ZHZyYSsvV2JwNGpyNUVRcGtNS2NpNDM3?=
 =?utf-8?B?RlNHMVZiaDRMZ1B3MkFXUTgyTmx5MXV5NVBDZmpEWGJXY3B5Wk9jOEJFVi9M?=
 =?utf-8?B?bVBsdTNMSFBGMDMyNFZ2RWlxSE9hMGd3WjdLckRkN0QvMXNZMXhvK052RXFR?=
 =?utf-8?B?NStTYmJHZnlCeXdRdStBOURqa0xwWTlWdG9NNTQ3bVdsMm5WaFU4Q2pXZlc4?=
 =?utf-8?B?eHRyeGxnVWpaMHVLTmU4TXZTNnZabS9VbkZtSjgyaXNXY3IzZ0VqZUc0QUhP?=
 =?utf-8?B?VnRIQzFnZHNmUXJHaFRVUmt4cjJRdytMbi9wVTJMOEdwMk1CM1NlZWxiU2sv?=
 =?utf-8?B?bkdsYzJpSEJEem9rQW45QlNrejdyZ1FIRjlNeDRXQlozR1VWM1NQaCtnYjdq?=
 =?utf-8?B?VDQwOXhIZ2FmdndGOC9uREJHUjl1b2JDWnFqNkZqOFFNRmVxTENZeHE1ODVj?=
 =?utf-8?B?dDRxczNIVFRBME9EZ2cyTkk5bm9MdGhObmRGRjZXbGNTdXptZXZqOWQrQm83?=
 =?utf-8?B?QUlmVWlEYXVrNEg3UTBxWkdTcUdLUEJSdEd3RzhmN2xIVnBsUG5lSEppdW1q?=
 =?utf-8?B?VGR3Zlp5THloakl3NnNPVmd5Z0FUOTBTMkpkUVkzZzhGbnRGRThMRVFhdFh2?=
 =?utf-8?B?cDgwTCtEVU9pRnlOaDZPVHBmMXRJOERiMGhpUThlTVo0VUNxZXVmZWk5TzVj?=
 =?utf-8?B?ZUo1b2w0NitXaGJUL2dKUGdIc1V6UEh2VUNaZytybDFUWWhtQ0lIQUw3RkVj?=
 =?utf-8?B?RzVXZFkzYmdEbVZ3UjU4eDNQNmFPMWJvYlE4d2l4Q0p3eENXNWpVL3k1TElZ?=
 =?utf-8?B?QWlkYkIrK2ZYYnBjMGs5OFU1WXZ5ZXgyUmxDVk8vVnBqaEVmZXFlb2R4d3N1?=
 =?utf-8?B?RHJvbEFsNnRpMjB5RWVmWGREYmIvM2FBNkxweDdhUFJhMzduam9QMzltZUtU?=
 =?utf-8?B?aG1rSGFtcWVZMDJpamZLWGFsNUJyZElvcnJ0dGgrVXMzVi9CM2owWFo3NWtI?=
 =?utf-8?B?WWFhMXk5bXcvaUtIQUgxU2VSTEZZTUJNN05LeFVOcm1RbzBFbW4yb3h2NlN0?=
 =?utf-8?B?UDAydGgrU2RDeExQM3lwUThLeHZMOTgvdnZscXR4OW1RbnNOR096RVRET1RL?=
 =?utf-8?B?NHVaMjhUQ0pHOHRDRzdUVFJpZUFMNlA0M1RkQ1VyQnJVRDhaOGFrRjYybUts?=
 =?utf-8?B?UFd4TnE1UUdPTkVTQ0hSSHQ5YmV3aUxBZjBKRGtBRFg4NUo2RnBQT3dzK1pQ?=
 =?utf-8?B?ek9adkpCN1pXTUR6WFdqbElIRjNKTHNmZCtMbys1YzRQZWVESEloK3IxV1Js?=
 =?utf-8?B?RG8waVhmeE1FbFZQc0QyWHJsL0JxOFJVWS9vbGxRN3NmMXJyVkQvdk9jOVdq?=
 =?utf-8?B?UjJjeWozRzF1UzVuNXltUGNXTUVKNWQxTHhUbjlvWVhYWFgzYXVZd05Pd3JO?=
 =?utf-8?B?MTJySXNUdkgyaEkrc2pRVllDa3lVWVJJRVR0YTBZc1cxcmdFRzFXclB6dU9m?=
 =?utf-8?B?NStFVjhjYklIWVMzVGo0ckIwTUJWRCtKUTNKS01MeXQweWtiM1Z5dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: l5vHSzF/v2O81+DkXXLYEloPDzI4wbskashls/7YKAsw3nTclusplYYYvtT4k/81FQyjrvJiPpughBojvhxFA+OrcaTPVgovJoNB/3coqKFJ0mnPwxgYT+HaPYi7KSX1YGfMMQoxJinMbECCwbVZkn9dVyxhYzOfzj8eChR6THoz2n3b9TLW98IH7dcWrrfru60zhxc/zpO0HQzQkjLedDHF3wNS4JkilXGvoVBGpwuo/wP7wBhUDi7HaEjQqzQ1SL5wxeEu4A8k1WsU5kr3nKdOh6hP6EkXSC7rA+TSHYlOXjrjMwl1LKlY1mR+E/+7Hp3iuL7lcWbKHxw3Cfpu1g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8652229-ed82-4d3e-07fa-08dec309462d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 13:49:33.2005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pojisixlqPkqq5p+wCwPv8NZKunea/njquuJueRrfnOmZ7tz+/AkXChH3SwWH2/Y6JCSc7eGAPNxobpvo2N3/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4981
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88DCD648A6F

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAwOS8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogQ2xhbXAgc2VxdWVu
dGlhbCBsaW5rIHRyYWluaW5nIGZhaWx1cmUgY291bnRlcg0KPiANCj4gQ2xhbXAgbGlua190cmFp
bmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzIHRvIE1BWF9TRVFfVFJBSU5fRkFJTFVSRVMgdG8gYXZv
aWQgLSBhbiB1bmxpa2VseSAtIG92ZXJmbG93LiBUaGlzIGlzIG9rLCBiZWNhdXNlIHRoZSBjb2Rl
IG9ubHkNCj4gbWFrZXMgYSBkaXN0aW5jdGlvbiBiZXR3ZWVuIHRoZSBjYXNlcyB3aGVyZSB0aGUg
Y291bnRlciBpcyBiZWxvdyBvciBhdCB0aGUgbGltaXQuDQo+IA0KPiBUaGlzIGFsc28gcHJlcGFy
ZXMgZm9yIHJlcGxhY2luZyB0aGUgY291bnRlciB3aXRoIGFuIGVudW0gaW4gYSBmb2xsb3ctdXAg
Y2hhbmdlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190
cmFpbmluZy5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IGU3NjZmN2MzMjNmNzIuLmYwM2Uw
NWM3MzBhMjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xODMxLDcgKzE4MzEsOCBAQCB2b2lk
IGludGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiAtCWxpbmtfdHJhaW5pbmctPnNlcV90cmFp
bl9mYWlsdXJlcysrOw0KPiArCWlmIChsaW5rX3RyYWluaW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMg
PCBNQVhfU0VRX1RSQUlOX0ZBSUxVUkVTKQ0KPiArCQlsaW5rX3RyYWluaW5nLT5zZXFfdHJhaW5f
ZmFpbHVyZXMrKzsNCj4gDQo+ICAJLyoNCj4gIAkgKiBJZ25vcmUgdGhlIGxpbmsgZmFpbHVyZSBp
biBDSQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
