Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tp6CH0qQIWrgIwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:48:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60A46410AB
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:48:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SpBs+wC3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D66E112829;
	Thu,  4 Jun 2026 14:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC024112829;
 Thu,  4 Jun 2026 14:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780584519; x=1812120519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AhMi9aJsBOQG/UhYi31ML8kpCetLcRV0Bn1ACkDD3yM=;
 b=SpBs+wC3hpiWagHuqbgGCeS7yiztrUJS6MmxtFvE+1Rgi5t18vA6nzkj
 oLesUP77WtMpKgk/k99mFG7gCwvb0j5bymIsI4N21Ps8B0eQcMoWI0GDg
 SVd/Dlm751QWwOq2QNXEpLPzis6ea1Wev3OA03O5pbo5YcEVyqGQ7o+Fe
 rx82SRJND72RzAJp9a8wqt/jINGCs4b8z7yaOUkqHkklUWsowieJvI/l1
 Vj6FJvMn58qgUjrMUzCtRgQsGbXodqsf+7WiupPy/6ydubZyvL44OsdKe
 hnwFc315wYpssiW9imFhjkIpUu/Eq071pp1TO9sWyKXnHIxtITBFAP5br A==;
X-CSE-ConnectionGUID: YbqBo7FpRtOGN3/71s957g==
X-CSE-MsgGUID: gIFmW0cYR3ClppLhMcdbjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81407260"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81407260"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:48:36 -0700
X-CSE-ConnectionGUID: qIBVFmkiRPyul8enRf+mDg==
X-CSE-MsgGUID: qeY//KDORa+4ZLy3h7hXZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="249484755"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:48:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:48:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:48:34 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:48:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ln5Baw6Lgr2aAtlP6GBW4gzpMTqhsAvopnBhK6qQg63h/QfwXWBNH1IqmuiStgO1JqYkdUOsGGiJEtlraj1RMA3nicIKkaJ5ox6BELRWUBdrvWcTacrNbTP1EoyPlm2SUFR8ZFNyXMUI+T7rLZVKK9LQB4WXfhIjKVqowsSblHVV/12749stUWSjTTZc5fq/sW4awsxaAHpOzkoqQDt+obLjI5w7IofUdOeyYuramRnRhKtxq/2zS4QXrKu927VFfvVAKLdOK803qeyTQreN88iviFOnzMsd35NmWPx5ix/8R3yl0thiQAL2f2nwmBYDU90l13USVOdvJa/WGDLeTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhMi9aJsBOQG/UhYi31ML8kpCetLcRV0Bn1ACkDD3yM=;
 b=uen5QGcd+8FUT+Nl2B3GkqJOsB1YOZwKc/DCY4O29QHcGtjLWrJ70GOBUuRzJO8dliTAhZly48+V/GK2NkAKA5rYfoZq3cHhVywBLmtan/bJp9YdZ+x+bH6nM1sxTrTsfH7g7rb8LExATLB+HhLCgf5jWVdKrzLCscsUNn41z6+XwdbTLI+aG8rFCSYOjf78Z+tBR8d4BMrh9MeDqLRv4EW7q46VPrTix4yqBN0BT/KQdL8YKO2sz2LHu/BedwRVK7ty+sihaJTH64C45FAAU1+GFlNSOpBzgctzWFduCgJQEveHJqgf9/l2fMRQDS+9TMWjuxiDvTaX94nn0uciJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 CY8PR11MB7266.namprd11.prod.outlook.com (2603:10b6:930:99::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.8; Thu, 4 Jun 2026 14:48:29 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:48:28 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 04/11] drm/i915/bw: Move 'bi_next' to tighter scope
Thread-Topic: [PATCH 04/11] drm/i915/bw: Move 'bi_next' to tighter scope
Thread-Index: AQHc7o8AvnzX22wvG02pCNVUibrC0LYuhUMA
Date: Thu, 4 Jun 2026 14:48:28 +0000
Message-ID: <eba9e4b3a6b0772b848e3a48caedc1d86e00135e.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|CY8PR11MB7266:EE_
x-ms-office365-filtering-correlation-id: 496bf8f0-77f9-4ca0-c569-08dec2485722
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|18002099003|22082099003|38070700021|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: h65yyot+AIOi5GdqOlw1/pX5bUJFSWNlf7Y0ptYfw9uY1eceQsRoyciFMuao4UfFZPR1+8sSDLmp1IoH3md4bV4k4LrGjKypip5FC9Ppi2NvUHShAVGQr4L5DQTiX3goDU7jAqOrTDcEBm4GuYxdUyUtm3rn5A04N3XtW8mr1iBH+xbcXtIGENloJ2A9CJAo+beu+sRjk26f3ecyMbWFZIyK5/zXBFnYjr9BfbBvnyns5CbnxWLaY67H87HuSgqqDLEmzJaGQyDEWkiJi43XUFbx3rR9KpA77UeUt3BBHKO4slNY+a0eRzT0TOI77XZddVvX/7OVIOgAy5BLwkYmycCFYZFxbF1sfqngl3Bsx3vBX8/E3qXcSot6vToY5qn47U83C1iNYg89Pfr34+TXuxcLLpXXX+QoUCztiazEkXjIix+AyiAuMnEs4L6KwEWeixle3WJteTiG/x203HFcWzXlGQEapt8AAvSQRxLouY8cmuVq6DSR5irLS7UP0UaIwp681DgKA4A2wFkdBFj7qvlF4qdn+DRzrVW/h2rwKIv4xtOs5SZeVvFNLwfIqOkXjkFLDi/tTcVUMG9m/PlblpLjEMFoKNZM40ARr8r9SAb0akojSTBM66JeNU8kXuFjUh7W0c7+WuX4TFptsRXCNckWTA3l5n+guTWHcQLdt3XAWXFjp7jRmytXM3TOjHvpB/+tWCWO95xaKkYhtCulYNWawoxVjttuiBi9AHAaCvLEggZxTLdWPOv4z6vyKBhc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(18002099003)(22082099003)(38070700021)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmdZYnU0RnIyY2xETGFLUTA0d2lrRFZpSi9QNVBoMmNlMWZXMGJHNGVUQXIy?=
 =?utf-8?B?UFhrdkh0cVNIWkpmUkNlU1lqMk5OUFhVWHhKakY5dWJuc25JSG8wdDF6eEN1?=
 =?utf-8?B?bWJzQkpCQkZPaFNRZTkvU0hNWkhmYjI2Z3ZqWVg2TldKNEc3aUQzSDRZYWp1?=
 =?utf-8?B?K0RYTjZGWUliZlRqRWxKcXNrUWJybE5sYy9ndDVEZVJiTHp5dTJGMlBpTUkw?=
 =?utf-8?B?c1hkQVpxNjl0Q0szVU1tVytIMFdBcnNkdko5L1pQTVRwb1FOWFcrNldTK2Ra?=
 =?utf-8?B?SDROTHdFVWZTV1B3QlpHazlsWGhoRFdlS3dJOWtVbnZ6cENvTjVDZis2a2ht?=
 =?utf-8?B?cVY4MHhNMEIvVmM1blg0T0FFMXp0cUMzN2tpdjJLZUtoZjBvdmI1Y0lWbGVp?=
 =?utf-8?B?WGtIKzlldTZNNjVNNll6dDV4STgxV2I0Z3c5S3FQcGdBZ0h0TnFMMFBYQ3R4?=
 =?utf-8?B?SjB1YkViUmllNWVSOGtUcmg2ai9HM1dIZ2w0OGNrWFFoc0lFWjROb2EwYVhO?=
 =?utf-8?B?S2QyZkYyVU0yN2RaNEFoZmttMHVZbndCY2VYRXFQaEZLSWdIeGZaTDZBTlMr?=
 =?utf-8?B?cWNIVHU0NmFtcW5UejVEMzRYdTFONDg0enJjWDFQRkw0NGh5N0gyb1lyYVU0?=
 =?utf-8?B?SWc0MW1LNU9MSSsrUkczZVJDTCtTSTlEaDdJeVRpNzhyV2UyQVh3NndHemZB?=
 =?utf-8?B?Z0p5aFlkczFtRERpcmVFUktyTHZJQmxGTTVZOC91M3JhY29jMW02TXYyWXo4?=
 =?utf-8?B?c041MlVmRittM1lNbTltNTU5SnhMY3Z2cE1wMDdncE1qdzdDSzZPZjdjM2lQ?=
 =?utf-8?B?OXorQ3E3TkdRV2JLZmtlcklMVi9DbVJsa3lFenorSlJjMHBYR2xueUhJQlhZ?=
 =?utf-8?B?bDNQcmZOS0RsQlNHVzJGOXdRM2VIRWJCR1VGR1JnS3UzNFN6RFkxenFkY0t5?=
 =?utf-8?B?MWFyMFhQRHVOZlErZFYxaEdYcTNDTVNyS1ZnMHV3amJQdy9QSDB5QmFERXZv?=
 =?utf-8?B?RnlIbllGZ1AzMGsrTzJ1QjcxZEhaTlZOYzNyalRVWjhyUDhSbzk4bkMrc3Bk?=
 =?utf-8?B?N2dyNm9EbEFBOGozNmNORk9aSUJEK0YzSTdXakp5UndESFZ2ZmFHWTV6NTN6?=
 =?utf-8?B?Q3NqMVl0K2J2d1RnbTh0MHlEY0xWL1J1cGt2MU9kK1NUdVJKUW9YT0hBOHBo?=
 =?utf-8?B?MnhBdnhLb0pNWDVGN2ZrTHlLYkxRWW9ZOUNySmoyVThzT1d3Y0dVOXBUdXlt?=
 =?utf-8?B?L2ZLd3pqTHJDUjFraWxhbEljRVhhV3JOd3hONXNpempDYnBhdDVNU2s2OEtu?=
 =?utf-8?B?ZGZwUSs5R3ExdHRldnIvSGkvOHlFQkEvZ01kTGl2a3RjTitray9sR2JiWmVG?=
 =?utf-8?B?Yk43NG9TeFp4UmVFSm9JRkszby9LNjdTOS9pS3RUQWRZWERpV29oTFF6eEEw?=
 =?utf-8?B?MS93cjNYWVhDMHprM25SUXUwbFJIczV2b3NFL3U4UlJWbHJRbzIyamowbStI?=
 =?utf-8?B?bGYvcDhUOEZ1SXFxbjJEQTQzQVROaWI0aUxuSTFkTDZtSUl1V29QSGpDMEww?=
 =?utf-8?B?M1JhMFVqWDB4NE5UWE5nWXExMDJNOUFhRXhNQjM4a0toVE9uYW9QZTlWSm01?=
 =?utf-8?B?RjcrMFVveHF3Z1p6RS9QK0JEbHczY2JRN1VEQ3RDMXl1bW5rWU9zdkNnczB2?=
 =?utf-8?B?L0pGZzJTT3pWNXoyaGNMTnBWOHhyYVlkK1Y5b0FxVjJiYStNY1gvZGExS3hS?=
 =?utf-8?B?clFpaGJJbzBtbFlUT3hZSTE1TzFwWGxIWDA2TnA2RHNoQ25VVGJvb3RFcThW?=
 =?utf-8?B?SmdoNStrazdqcktuOVA4UTVlcVM5YktSMlRUcmVmWmNCdmtHV0VDSzE2MG5L?=
 =?utf-8?B?WXY4eWhtOTlZMFFyR3lJallJMUsybllyeUVQMDRkSmhrRjlub1k5Qk85OXBi?=
 =?utf-8?B?eXlDdHdKSWdVcUU4SERCYUdjbTA4UjFKeWg0ZndGY1YrdFNBT203Z1JraVc0?=
 =?utf-8?B?bEJkMFdTSHJOZCtkV05tQTVlNm1jeEo1ZGRBd2ZJSkNMM3BKVEh3MEk2dDd2?=
 =?utf-8?B?T2N2NnpIMG1aSjVORzN3VzBaSDlVU3h1cmowL3NKSVFmUkdZVkJjcHpvNkEz?=
 =?utf-8?B?bFZpUkRHZVBzVzBXK3kxTTVWYWdacGxjQVBpenA5N2tNZ3cwNUFBNTRDdFRG?=
 =?utf-8?B?UkRZMnVzTjRnOG9qOHRwckRoRkFaS2s0VU9vQmRWdE56d0plT2xzanpvaGdS?=
 =?utf-8?B?WUZzWm1JQVpRdXJCL2paNVNKaE1zTU94S1ppUWxtWnNOOWJhOUo1b0huTWN0?=
 =?utf-8?B?OENpMlkxY2pnN0VJd3hXOWtINmNSTVBFZjhQVXZ5N2ZRRDM5eGRvUC9qSXBi?=
 =?utf-8?Q?/1YPDM9lbFRTAmdgcGKRS40Yv2DPlrnI1nHV0D655c0Xl?=
x-ms-exchange-antispam-messagedata-1: dR8ERL0ASFso24VekJI3FmbDQgIQZ7IoPhQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <39E0C8D61370C44EB518044A1A791629@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: f4tl8brRwA6nP3RhMFIc6XoxZHOsEH9m4yjbpit8hnG/g5JuuqgDtkR5CZx2Qvay+Wn9WG2JKgcX3rUdOhdBNdbEZWyxjZacMjBTZAqjZz3gMu21Zf6tdo9o9qZUfTGfXLhI+iURf+ZmyEiAcHERGoykWV70p/KUI9kAwIzpqXZtUHctbOmnYiSh+nvmfcG1vcVzlF06K/1ehvLBOmzw0DDkN7fuW3TXhq8NVVOyugMt4y2CzCIFv35Mv7X4KujKIuZpPvygB0aClkzleV9W5WBrTYRuBHmD+UmQkjoNZhu9KnnUlnrHF+2LFLEx0Q9Dh04vcbPDnLOqXeP2V0+ecA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 496bf8f0-77f9-4ca0-c569-08dec2485722
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:48:28.7882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eanTThfuAkUafn0ufpCoqi+Su/3SEPyzvHAwkOCcxHyyjV6AIXKxd/zNWVTw6T3L6r8mL2Iq7hdadZb0XP5MMYFwTLQjzLBLn+dlVv/6Y1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7266
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D60A46410AB

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTW92ZSAnYmlfbmV4dCcgaW50byB0aGUgc2NvcGUgd2hlcmUgaXQncyBhY3R1YWxseSB1
c2VkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jIHwgMyArLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDIgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8
dmlub2QuZ292aW5kYXBpbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4IDRiNWRiNGNhNzc3My4uOTQwZjIzZTdkZDRlIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC02MzMs
MTQgKzYzMywxMyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlz
cGxheQ0KPiAqZGlzcGxheSwNCj4gwqANCj4gwqAJZm9yIChpID0gMDsgaSA8IG51bV9ncm91cHM7
IGkrKykgew0KPiDCoAkJc3RydWN0IGludGVsX2J3X2luZm8gKmJpID0gJmRpc3BsYXktPmJ3Lm1h
eFtpXTsNCj4gLQkJc3RydWN0IGludGVsX2J3X2luZm8gKmJpX25leHQ7DQo+IMKgCQlpbnQgY2xw
Y2hncm91cDsNCj4gwqAJCWludCBqOw0KPiDCoA0KPiDCoAkJY2xwY2hncm91cCA9IChkaXNwbGF5
X2J3X3BhcmFtcy0+ZGVidXJzdCAqDQo+IHFpLmRlaW50ZXJsZWF2ZSAvIG51bV9jaGFubmVscykg
PDwgaTsNCj4gwqANCj4gwqAJCWlmIChpIDwgbnVtX2dyb3VwcyAtIDEpIHsNCj4gLQkJCWJpX25l
eHQgPSAmZGlzcGxheS0+YncubWF4W2kgKyAxXTsNCj4gKwkJCXN0cnVjdCBpbnRlbF9id19pbmZv
ICpiaV9uZXh0ID0gJmRpc3BsYXktDQo+ID5idy5tYXhbaSArIDFdOw0KPiDCoA0KPiDCoAkJCWlm
IChjbHBjaGdyb3VwIDwgY2xwZXJjaGdyb3VwKQ0KPiDCoAkJCQliaV9uZXh0LT5udW1fcGxhbmVz
ID0gKGlwcWRlcHRoIC0NCj4gY2xwY2hncm91cCkgLyBjbHBjaGdyb3VwOw0KDQo=
