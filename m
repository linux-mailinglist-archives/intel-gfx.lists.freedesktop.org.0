Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPYDAXzazGnnWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:42:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE6A376FFA
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D70610EB4B;
	Wed,  1 Apr 2026 08:42:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vo4CORWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAA110EB4B;
 Wed,  1 Apr 2026 08:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775032952; x=1806568952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QpBAqL1jmlO3bMl4ifgtYVONuhIE6low4yhR9NkoSo8=;
 b=Vo4CORWMRAwOrutfu74I4avfhvcFvDGd0B/55eu8Rh7aBQgLT8HBrrf1
 uOXq/No1+nplRgSxJEb5cSefiTW9wpQymFAUne7upOQTq+ysh/cO2+T6G
 IQZpPSEX0dRq+3O/fO/hNgv3xyZNIH8/2hRCXneTMvqnQYs1gA5U2ih7i
 Cv+W/h8kOeWYLmrsaQijIUkdo2geuCJZCzCniFK3fH59v0lqP5/c9AAIt
 szbQJjqxeZBSqgNFZX+ntzhcK7lrhpj1GnxVX3R2t97KXFdaneUL06GHJ
 NtZPHsef8L93O9/hd2SflGEiBgmSuqKMuDvTDaULXCP9xKR4ev6duOXFr w==;
X-CSE-ConnectionGUID: KBlvvi5WQJ2aoon6QbjK9g==
X-CSE-MsgGUID: Am8CEpdfRCetzEaZyRLL2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75957320"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75957320"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:42:32 -0700
X-CSE-ConnectionGUID: NcskXj63SGW5hzN8vmgEow==
X-CSE-MsgGUID: zW5asEUIQ0WdR72/ZQOE1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="223735474"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:42:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:42:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 01:42:31 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:42:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJfcqGcLHroS2MaSHiORfMavXbhhrJUiqmQxpW2sdkB21C/eDDjBRgkMpBYA6rJeRYxwC+SWZiRkJ1aPb0kzWK7tRb7hbSFqPef5gspLbY9jsxWNisx+4o/M5yic+z/uVVpz6eiVkfTgOg1ekunHdUfjyTQ8dNple/G1gX+b5q0qY7t9JATUA4idA3LSztLxaibytFd6tGpDkM/MGzMyzpVtVLK7AnAjGA48hFuA+8eZGZ0te2Ev2fNZ4kQddQaBsmq6sB6JjDqPmhOw+maQyMxqXO4UKsXydTlHrj9dvcajQMEazrNT8ZjjJcklGAlc/3VGab/rHtSiXJ7VHdq3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QpBAqL1jmlO3bMl4ifgtYVONuhIE6low4yhR9NkoSo8=;
 b=Z9FDIAZVMPE5SW78xJmq9a1VQfQzAuAzUQR9zVQ9UCfIal/LuIrT7zpjVOIiucyASQ6zQcLr0Om/GPrSbO4/yAwgKzbrNVAUo6GUdCVNuMISaQBjL7AESerhYRJL4fXvb4rO5Cs92OCdLb0uiTcN0LQUzCcfmijO8wQ941Q5uPyTIh9jcT2oe0daLT7kXPhLac5rNaC3zaufDIbGUKLQ/9hURNUjQ/ZZwz0E+oUmXr+Gjdi/g3sn8TmuzKH7OatcVjYwOiw0KNnnPsYkSYeeHRk7smK0mhFkVL7nTpXQwuSDQN654fVxePZTlLfUvGQ6+t7bYtElEWrrK3XdvVkTMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by LV2PR11MB6048.namprd11.prod.outlook.com
 (2603:10b6:408:178::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 08:42:28 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9723.014; Wed, 1 Apr 2026
 08:42:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
Thread-Topic: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
Thread-Index: AQHcvd9uJh0vigkUJE6zCTp5vxYjSbXJ6s4Q
Date: Wed, 1 Apr 2026 08:42:27 +0000
Message-ID: <DS4PPF69154114F4690423A773CAF4F9122EF50A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260327114553.195285-1-jouni.hogander@intel.com>
In-Reply-To: <20260327114553.195285-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|LV2PR11MB6048:EE_
x-ms-office365-filtering-correlation-id: 454ed319-0536-4fb5-6dfa-08de8fca9b06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: mibHMCakws4wWHeWxaxcL54bZwnu6lgChdldFotYuWnw7ZA85lacXnkgBKvTgZP1/F2m+v+9AgzSWuI2mS04tV0lEgltUL1epkKsI7Jxksx13ezWYc6wtTNnFuVFPgY/+v0TD2rUdV5FMvj/+C3B5fDhM07yGtHo7AVRpvER3Xvhej21423pm2eeMdV8dZHPzBNijRoak+083P255P9NY+AM4St1uz7PHHJ8b0WVmn8gay2nRrSoXbJRwHelGce963DTKUXN+36MhNHbFNoDvkjsfzUuQ7bJ3/ywIv51LwbJVcdx0seqWbRioWUtiXyIYBIaSYPEhF7dGWvhKB+0S0WSNMhDsOIlDdFxFqrFMfvB3Yjs5eemuFv6KFpF0Za7r+KHRnQIMkTfc6bHn6uFxN1UYMdL68PQYLrGxlQqXzVDkw9MNX9WaKE4lliMjnI7w1XA8ZDfH0emBsXirTVjeUXIiJC2wcJOGMT736o0lzH0TuYNw0t+bpfV4Dk52KUS3TSeNapYgEGQq1KF7XhNNSaDi2t3tgMTiVyLJ+d+oWSWBFfcL9Tp6g6Ay9wB9N7HQFdwpfr+4DefwYmvOwgTzbzwGnEHTeaC9unACaCur4ayCUW/8+Hkt6O5Sdar7DDultK8cLxgHylC7udJnlnDx67k11ByYuJ7Ls7ctUGaGUvGk9/5KtQrRt61Eaj6o9KmyLm+y+E27zci1e17IbWhQxOVxa7vBhsz3BM8A7Qo3URwbQ5vf1KR3c/dAW7totmmlyMOuQ+O1PZ4HFe7lQorR02u237quPnDxhnFzxnW3b8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXVFdW0xNUhxSzFLUmM5NCt3c0pMMHRBWjRBM3Q5OGNScW45VCtTd2xPaEFL?=
 =?utf-8?B?RlM2UWk0bVBEUmlKWHZtNm13eG1kZml2bmZGb2xJWVdKV3FCcCtwQVJPL1RT?=
 =?utf-8?B?dE5xYzdiSGdYSHpEM05SVXpGa1BjQ0hScWNqRGxOYVROWmplTFdhYWpsTmVP?=
 =?utf-8?B?SDBLN0NaUHE3TDVPc1BGQ05IRnA0bnA2R0JUMzZUTlE1TEhjNnpiMHdLOGox?=
 =?utf-8?B?TjYzZFlmeU1ReW1TVUNCa1RUWUhucjZma251VXhvVDFqUEllQmE1SEpwQVVw?=
 =?utf-8?B?R0I2cHQ1cEpsT21tK1FjT1V6MTF6VnNyTlBWUTV3aXdnQktNdzJJdU5MWE5B?=
 =?utf-8?B?UGdFWEhobDR4cmordEdidjd6VUxnVURCNXZlREdZTHBIb3I1dUdrOFdBMzVz?=
 =?utf-8?B?ak1hMThkTU9kV2c1MW4zc3VOZlFicVF1Ymd5ZjJyc3h1cHVUVThiNTlVa3JR?=
 =?utf-8?B?NDZacWgxbHd6OUw2YTE5K0ErWHlvNlZjUGdNbzdSWlp5cDJqMXN0SmVuYkI2?=
 =?utf-8?B?R282SjhRdlhTNzdjV1ptM3JPNVo3QktTMy85azJuZm5CbGwzYytBd0RJcEow?=
 =?utf-8?B?dlVRLzJCaWc3YWdTUE5MQ3N2TnBKZW9KblhSWnY1UEVpWWhoNmNCdjdzQjhW?=
 =?utf-8?B?S3hPeUkxTy9lYUdtSGk0VEtYSlYybTNHeGdjL0hhS244NmV5K3kyakZlVCtF?=
 =?utf-8?B?MmVOL0dkcE4rSjJGYkcvbE03d3BrcGowcm5RWFNKQjFXcjNDM1RtVVlaelRi?=
 =?utf-8?B?Sm9HbHhWYVFuTm5JMHo0ODNQeVQ3cUpaRG5RWkdlMXlOcGJWWFpZcHl0Vlpq?=
 =?utf-8?B?WE5uUUU2MUovamNyRVdkUGlIeDJNNU11V2Rwa0syZFlvb2lJNEQ1MmRoV2li?=
 =?utf-8?B?OG0zQjN3Z3ZNTVdWa3V2QkZ2a2tkangydW5jL2p1QTUvVFppZDl1QkxObGZ3?=
 =?utf-8?B?c3N0cjZ1RytPMDdGNVBrdWZSMFphRzFMMDhNdnd4KzdFbkZNLytOMk5xeDBV?=
 =?utf-8?B?NjQwbWIzQnBQNU04ZXl2YktzSEZZaXpWUjRGd0g2ZTN0VFFDRS96bk1VemZP?=
 =?utf-8?B?Q3NPNWVwd29HRzZPYXBlL3NDOEVJR1l3Q2ZTVVoxQktxOHc2U3pIam1ZQStC?=
 =?utf-8?B?eUNGUlJDcXFYbERzM0xGZ3NmTXhOOTMzSWVTSXF6bnNIa3ZRNVAxc2hTY2tL?=
 =?utf-8?B?OEZ1R095OFc0OTFneEdlc00xd01IbVNLMFhwV0l3cVI0bjAwTFU4bVAvL2FN?=
 =?utf-8?B?OWJNZnlFSWVnL0pUVGRFWE1BYTYwc1RYNTZGeWV0MUFmei8zQndVUExQZ1c3?=
 =?utf-8?B?eExPMGRsV0l6VFNYdHRGVEdubE9yVmdDM09iM0tiTndFbElrMnZzdlJLWkp1?=
 =?utf-8?B?bTNwSWtPMWVMMENRS2pQUSt1STF2dkdwdFhlNVpWdVFRSm9hbFFOdlJpeEs5?=
 =?utf-8?B?NlpsRnB4dmcwVnNXQWlzejZKY3FvNzJ0bU5QWkFGT3hjalYxVG9oOCtOYnJm?=
 =?utf-8?B?elZZcXpROWVtYzBkUmtwUUFDZmluQ2FxdzBoMFVjQURBa3JhZzgrd1JiWUx6?=
 =?utf-8?B?SWJqelFWUjU2dUJjUzAxWlptYTlkdGduTFFJTEQ3ZUVhV3RHSkloYW9aVEYv?=
 =?utf-8?B?cGNWL2o0a1d5MDRHMDc1bGkzdE02eFR3ZWJ2U296S0xyUVMwOXRZQTZWZ2lV?=
 =?utf-8?B?VUhkNmNiM3JTYis4OVBaamxNOUlmRnFvbmtaREx6TUtkOGZBZjFnc25zWjJ4?=
 =?utf-8?B?bm1WMk42TTVOYU4yUWJHMkNhOGR0Zlk5WmhHdGNEZmt3RjlpZTZUME91U2I2?=
 =?utf-8?B?dmVPdGV3T1Vsb0FRcmVTL3cwUnQ2N0lJQjBaUUtid1dtOExJVlYwd2hnNVRs?=
 =?utf-8?B?dVB3dTZ1V0wrVzBNTW9OSTlzb3FocldiSTNkV1NaUkpHbk9qUXI2Qk1lN0lp?=
 =?utf-8?B?YnVmL2F0OTZiMDNKRGlTZEwrQUZiUnl0ZUw0bEM2TkRaOWpPOUxBc2gvTU9a?=
 =?utf-8?B?N2hOazErRlR6eC9RRHJCbjlUM24xbzBzV25zclRPQlA3M0JsTlJneHpleGta?=
 =?utf-8?B?OXBnVEc4MVp2YkhZWk9OaXkzMXBpKzFpWjhYNDlLVDVLYVdreWJQYThoSEZi?=
 =?utf-8?B?c1pDSEg5V1g0NG5jdmE5K3FtdWMrTytuOVNFNjNqdHA3OTYzWGw1aUY5Znk0?=
 =?utf-8?B?R0luRzdHNWF5d3cra0tmWmJ4QjhOZUhWdXJWWTcybHNSWHd0RUphamV4T0NN?=
 =?utf-8?B?QWQxT3dVazU4b1dKVVRXZ3hIaVRpeTNycnZNNzVzUElDQnFGSndWTWFDY3o4?=
 =?utf-8?B?SXhwZFoyQTc5Yk5ydGJYL0VJYnREOHQ1OGEzSTJwblo3N1RwWDExZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Vv44GFRM1Gz/Q/xnuBnkL7GMbsp4jnXOBwvks3j1x63fuRkGJLQhwFyCcZxTbqWCgDs7hBH/3ewYxdWT9Lx9YSMHJfj31/mvxcVMpTJaWDepCIkiI9sUHMNZMzix/o2oUsbeKyZIC+aTgDXBD6nhhsgGWLNW4TGIlkjCZxN6/qehCpPsp/qtVOkcfv4HNDdlxQwtjOTxD1c0cFQ/uwuJ9em/eJsRzB0vAI44CX9c5IBIeOKAB3UmTEnyi8YA/2XPvQpBvhRy5DQJT3C3vwGfNN6ZSQZvsqBsQh7LEl3tvnV/pJEN54ESSDNr8zeMWV+B07ASfrDaSnt9eO7rrWGIhQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 454ed319-0536-4fb5-6dfa-08de8fca9b06
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 08:42:27.9889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vBfM9Q2LzTShYE5aJoBoRIiX7vk3QXw1A+DZxah6GZg3y1Cgtkd3CGQzYrpZP3X+uPiO/alndKnSQw1ZIJezGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6048
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3EE6A376FFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBGcmlkYXksIDI3IE1hcmNoIDIwMjYgMTMuNDYNCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBzdGFibGVA
dmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBEbyBub3Qg
dXNlIHBpcGVfc3JjIGFzIGJvcmRlcnMgZm9yIFNVIGFyZWENCj4gDQo+IFRoaXMgZmFyIHVzaW5n
IGNydGNfc3RhdGUtPnBpcGVfc3JjIGFzIGJvcmRlcnMgZm9yIFNlbGVjdGl2ZSBVcGRhdGUgYXJl
YSBoYXZlbid0IGNhdXNlZCB2aXNpYmxlIHByb2JsZW1zIGFzDQo+IGRybV9yZWN0X3dpZHRoKGNy
dGNfc3RhdGUtPnBpcGVfc3JjKSA9PSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
aGRpc3BsYXkgYW5kDQo+IGRybV9yZWN0X2hlaWdodChjcnRjX3N0YXRlLT5waXBlX3NyYykgPT0g
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5IHdoZW4gcGlwZSBzY2Fs
aW5nIGlzIG5vdCB1c2VkLiBPbiB0aGUNCj4gb3RoZXIgaGFuZCB1c2luZyBwaXBlIHNjYWxpbmcg
aXMgZm9yY2luZyBmdWxsIGZyYW1lIHVwZGF0ZXMgYW5kIGFsbCB0aGUgU2VsZWN0aXZlIFVwZGF0
ZSBhcmVhIGNhbGN1bGF0aW9ucyBhcmUgc2tpcHBlZC4gTm93IHRoaXMNCj4gaW1wcm9wZXIgdXNh
Z2Ugb2YgY3J0Y19zdGF0ZS0+cGlwZV9zcmMgaXMgY2F1c2luZyBmb2xsb3dpbmcgd2FybmluZ3M6
DQo+IA0KPiA8ND4gWzc3NzEuOTc4MTY2XSB4ZSAwMDAwOjAwOjAyLjA6IFtkcm1dIGRybV9XQVJO
X09OX09OQ0Uoc3VfbGluZXMgJSB2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0KQ0KPiANCj4gYWZ0ZXIg
V0FSTl9PTl9PTkNFIHdhcyBhZGRlZCBieSBjb21taXQ6DQo+IA0KPiAiZHJtL2k5MTUvZHNjOiBB
ZGQgaGVscGVyIGZvciB3cml0aW5nIERTQyBTZWxlY3RpdmUgVXBkYXRlIEVUIHBhcmFtZXRlcnMi
DQo+IA0KPiBUaGVzZSB3YXJuaW5ncyBhcmUgc2VlbiB3aGVuIERTQyBhbmQgcGlwZSBzY2FsaW5n
IGFyZSBlbmFibGVkIHNpbXVsdGFuZW91c2x5LiBUaGlzIGlzIGJlY2F1c2Ugb24gZnVsbCBmcmFt
ZSB1cGRhdGUgU1UgYXJlYQ0KPiBpcyBpbXByb3Blcmx5IHNldCBhcyBwaXBlX3NyYyB3aGljaCBp
cyBub3QgYWxpZ25lZCB3aXRoIERTQyBzbGljZSBoZWlnaHQuDQo+IA0KPiBGaXggdGhlc2UgYnkg
Y3JlYXRpbmcgbG9jYWwgcmVjdGFuZ2xlIHVzaW5nIGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21v
ZGUuY3J0Y19oZGlzcGxheSBhbmQgY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGUuY3J0
Y192ZGlzcGxheS4gVXNlIHRoaXMgbG9jYWwgcmVjdGFuZ2xlIGFzIGJvcmRlcnMgZm9yIFNVIGFy
ZWEuDQo+IA0KPiBGaXhlczogZDY3NzRiOGMzYzU4ICgiZHJtL2k5MTU6IEVuc3VyZSBkYW1hZ2Ug
Y2xpcCBhcmVhIGlzIHdpdGhpbiBwaXBlIGFyZWEiKQ0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmc+ICMgdjYuMCsNCg0KV2l0aCBKYW5pJ3Mgbml0IGZpeGVkIHRoaXMgbG9va3Mgb2sgdG8g
bWUuDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAyNyArKysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyZjFiNDhjZDhlZmQuLjMzYjJhZTE3Mjc0YSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yNjg5
LDkgKzI2ODksOSBAQCBzdGF0aWMgdTMyIHBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gDQo+ICBzdGF0aWMgdm9pZCBj
bGlwX2FyZWFfdXBkYXRlKHN0cnVjdCBkcm1fcmVjdCAqb3ZlcmxhcF9kYW1hZ2VfYXJlYSwNCj4g
IAkJCSAgICAgc3RydWN0IGRybV9yZWN0ICpkYW1hZ2VfYXJlYSwNCj4gLQkJCSAgICAgc3RydWN0
IGRybV9yZWN0ICpwaXBlX3NyYykNCj4gKwkJCSAgICAgc3RydWN0IGRybV9yZWN0ICpkaXNwbGF5
X2FyZWEpDQo+ICB7DQo+IC0JaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoZGFtYWdlX2FyZWEsIHBp
cGVfc3JjKSkNCj4gKwlpZiAoIWRybV9yZWN0X2ludGVyc2VjdChkYW1hZ2VfYXJlYSwgZGlzcGxh
eV9hcmVhKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlpZiAob3ZlcmxhcF9kYW1hZ2VfYXJlYS0+
eTEgPT0gLTEpIHsNCj4gQEAgLTI3NDIsNiArMjc0Miw3IEBAIHN0YXRpYyBib29sIGludGVsX3Bz
cjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0ICBzdGF0aWMgdm9pZA0KPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJICBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywNCj4gKwkJCQkgIHN0cnVjdCBkcm1fcmVjdCAqZGlzcGxheV9hcmVhLA0KPiAgCQkJ
CSAgYm9vbCAqY3Vyc29yX2luX3N1X2FyZWEpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsgQEAgLTI3NjksNyArMjc3MCw3IEBADQo+IGludGVsX3BzcjJfc2VsX2ZldGNoX2V0
X2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCWNvbnRp
bnVlOw0KPiANCj4gIAkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVh
LCAmbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdCwNCj4gLQkJCQkgJmNydGNfc3RhdGUtPnBpcGVf
c3JjKTsNCj4gKwkJCQkgZGlzcGxheV9hcmVhKTsNCj4gIAkJKmN1cnNvcl9pbl9zdV9hcmVhID0g
dHJ1ZTsNCj4gIAl9DQo+ICB9DQo+IEBAIC0yODY2LDYgKzI4NjcsOSBAQCBpbnQgaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpuZXdfcGxhbmVfc3RhdGUsICpvbGRfcGxhbmVfc3RhdGU7DQo+ICAJc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZTsNCj4gKwlzdHJ1Y3QgZHJtX3JlY3QgZGlzcGxheV9hcmVhID0geyAueDEgPSAw
LCAueTEgPSAwLA0KPiArCQkueDIgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
aGRpc3BsYXksDQo+ICsJCS55MiA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192
ZGlzcGxheX07DQo+ICAJYm9vbCBmdWxsX3VwZGF0ZSA9IGZhbHNlLCBzdV9hcmVhX2NoYW5nZWQ7
DQo+ICAJaW50IGksIHJldDsNCj4gDQo+IEBAIC0yODc5LDcgKzI4ODMsNyBAQCBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiANCj4gIAljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueDEgPSAwOw0KPiAgCWNydGNfc3RhdGUt
PnBzcjJfc3VfYXJlYS55MSA9IC0xOw0KPiAtCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS54MiA9
IGRybV9yZWN0X3dpZHRoKCZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+ICsJY3J0Y19zdGF0ZS0+
cHNyMl9zdV9hcmVhLngyID0gZHJtX3JlY3Rfd2lkdGgoJmRpc3BsYXlfYXJlYSk7DQo+ICAJY3J0
Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkyID0gLTE7DQo+IA0KPiAgCS8qDQo+IEBAIC0yOTE3LDE0
ICsyOTIxLDE0IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJZGFtYWdlZF9hcmVhLnkxID0gb2xkX3BsYW5l
X3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJCQlkYW1hZ2VkX2FyZWEueTIgPSBvbGRfcGxhbmVf
c3RhdGUtPnVhcGkuZHN0LnkyOw0KPiAgCQkJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUt
PnBzcjJfc3VfYXJlYSwgJmRhbWFnZWRfYXJlYSwNCj4gLQkJCQkJCSAmY3J0Y19zdGF0ZS0+cGlw
ZV9zcmMpOw0KPiArCQkJCQkJICZkaXNwbGF5X2FyZWEpOw0KPiAgCQkJfQ0KPiANCj4gIAkJCWlm
IChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgew0KPiAgCQkJCWRhbWFnZWRfYXJlYS55
MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ICAJCQkJZGFtYWdlZF9hcmVhLnky
ID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCj4gIAkJCQljbGlwX2FyZWFfdXBkYXRl
KCZjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEsICZkYW1hZ2VkX2FyZWEsDQo+IC0JCQkJCQkgJmNy
dGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gKwkJCQkJCSAmZGlzcGxheV9hcmVhKTsNCj4gIAkJCX0N
Cj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9IGVsc2UgaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5h
bHBoYSAhPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEpIHsgQEAgLTI5MzIsNyArMjkzNiw3
IEBAIGludA0KPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlkYW1hZ2VkX2FyZWEueTEgPSBuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuZHN0LnkxOw0KPiAgCQkJZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmRzdC55MjsNCj4gIAkJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUtPnBzcjJfc3Vf
YXJlYSwgJmRhbWFnZWRfYXJlYSwNCj4gLQkJCQkJICZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+
ICsJCQkJCSAmZGlzcGxheV9hcmVhKTsNCj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9DQo+IA0KPiBA
QCAtMjk0OCw3ICsyOTUyLDcgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJZGFtYWdlZF9hcmVhLngxICs9IG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEgLSBzcmMueDE7DQo+ICAJCWRhbWFnZWRfYXJlYS54
MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LngxIC0gc3JjLngxOw0KPiANCj4gLQkJY2xp
cF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLCAmZGFtYWdlZF9hcmVhLCAm
Y3J0Y19zdGF0ZS0+cGlwZV9zcmMpOw0KPiArCQljbGlwX2FyZWFfdXBkYXRlKCZjcnRjX3N0YXRl
LT5wc3IyX3N1X2FyZWEsICZkYW1hZ2VkX2FyZWEsDQo+ICsmZGlzcGxheV9hcmVhKTsNCj4gIAl9
DQo+IA0KPiAgCS8qDQo+IEBAIC0yOTgzLDcgKzI5ODcsOCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkgKiBj
dXJzb3IgaXMgYWRkZWQgaW50byBhZmZlY3RlZCBwbGFuZXMgZXZlbiB3aGVuDQo+ICAJCSAqIGN1
cnNvciBpcyBub3QgdXBkYXRlZCBieSBpdHNlbGYuDQo+ICAJCSAqLw0KPiAtCQlpbnRlbF9wc3Iy
X3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3RhdGUsIGNydGMsICZjdXJzb3JfaW5fc3VfYXJlYSk7
DQo+ICsJCWludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudChzdGF0ZSwgY3J0YywgJmRp
c3BsYXlfYXJlYSwNCj4gKwkJCQkJCSAgJmN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gDQo+ICAJCXN1
X2FyZWFfY2hhbmdlZCA9IGludGVsX3BzcjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KGNydGNf
c3RhdGUpOw0KPiANCj4gQEAgLTMwNTksOCArMzA2NCw4IEBAIGludCBpbnRlbF9wc3IyX3NlbF9m
ZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgc2tp
cF9zZWxfZmV0Y2hfc2V0X2xvb3A6DQo+ICAJaWYgKGZ1bGxfdXBkYXRlKQ0KPiAtCQljbGlwX2Fy
ZWFfdXBkYXRlKCZjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEsICZjcnRjX3N0YXRlLT5waXBlX3Ny
YywNCj4gLQkJCQkgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gKwkJY2xpcF9hcmVhX3VwZGF0
ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLCAmZGlzcGxheV9hcmVhLA0KPiArCQkJCSAmZGlz
cGxheV9hcmVhKTsNCj4gDQo+ICAJcHNyMl9tYW5fdHJrX2N0bF9jYWxjKGNydGNfc3RhdGUsIGZ1
bGxfdXBkYXRlKTsNCj4gIAljcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdCA9DQo+IC0t
DQo+IDIuNDMuMA0KDQo=
