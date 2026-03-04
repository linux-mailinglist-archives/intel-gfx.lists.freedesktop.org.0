Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICDKLAjQp2kBkAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:24:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEBA1FB1CE
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A75810E952;
	Wed,  4 Mar 2026 06:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UzEeBdVR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496AE10E110;
 Wed,  4 Mar 2026 06:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772605445; x=1804141445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uhTJ4xgGjvB4dkSrnl7ulMmhmitUQj5JB+bOQTh/hfc=;
 b=UzEeBdVR5w+FOSwvwhqy+sGsZKk+r1TdHxW8JW9rZYXw/tf97gxb7nWv
 Sb+vjO/lxeOX/HTyLmazwgGU2dpPEmlRHepP/wWaOyLmTry4jVU65VxWe
 eglRF4RUd4ryq+oQyk3X0zdGWsDdIk4CT2kLmdheILWroAGZ7GtnFo7Vt
 ANXQbVtCJUIbP1TiKRysTvGpUfkP55KcY5XLH/Z7wUzwjjPTx7tybgduK
 L+ob17P36QT30qYqnjFuumKTbOdMlCXFwA7Wb9atrpv+ZLvbVV8oF+pTc
 u1YGJLIWy8YcXz5EwRsJ8UbDOndp9OdOWDaW48pWzokbyILMxnMR3DvDl w==;
X-CSE-ConnectionGUID: HgkRol+CSlWGgbEHcExLaw==
X-CSE-MsgGUID: kV+USLcHTEyA+x5rqdrRAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="84365466"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="84365466"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:24:04 -0800
X-CSE-ConnectionGUID: PhwO38hsQcGLcGngQbvogw==
X-CSE-MsgGUID: QWqcIpabThyUsaLfCSIJWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="222907834"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:24:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:24:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:24:03 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:24:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JYyw/Gt13xnoowDda/K5PtMPzZHl2MYxgGRcIFgp/rFNXiWHsplIDErbOa2LVEOpqsGjNEQA2wcg1X74OoP3YFtdZX54w3n6Y2OZMxds21MQ/mavNv9ECYiFT8ONwjFv3LiPsCd0Rw80wVNNUaJ1vPZ6hiq+IfE+mdcmxbj1byVSECemHWzEbB3Qyx954I0hpGEuSkc/UFr+el0iwpvo+kd79hNWe+a32aSClzwvNHuo7v21KjjuzBh2wLfuDIRCMZoHlBcbB+hsaGST54Ynto4KHnJ0W1W+qw42tYYurURHspZe5PvZ7mhHZTtNFbqhsrZWqLaiP7Od4AzS3Bto2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhTJ4xgGjvB4dkSrnl7ulMmhmitUQj5JB+bOQTh/hfc=;
 b=N/UgjoVKfsz530p2hgFN+5GmGwlPqSH7IneqQwrT9hGTcj71MAgutAwXynRAl4t6nFKyxKooPqs8AJAizCO1lfouKeIWLyl7mTs9u7fOHdSkEQWD7FCLnIiWVaQZJTLODeBg2C+7o1Ozkxi9l22tpsLL9N/enIIE9fJpbOy0PGJd5IvV12oO/LofM6x3LCOZuB2OUNc6FzDbiXcnaxZreC3xlHZtPYVbZ+M9V5vvh5SzBuchrFXJHEltCpC5Q4AN8wfJ2Bb3As6JBx7y2WNWmdvJSqzEHkl107XSMUCgYebyvVRZ+Y4SaefTZwFx7bLkAer3Zt4IYvm6p9YQHmjzDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB8186.namprd11.prod.outlook.com (2603:10b6:610:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 06:24:00 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 06:24:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq4xnrFaIfb16SE2LXum5p76RxbWd5hIAgAABYQCAAAAxsA==
Date: Wed, 4 Mar 2026 06:24:00 +0000
Message-ID: <IA0PR11MB730768CA9A67C7AA98CCDF7BBA7CA@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304040551.754483-1-arun.r.murthy@intel.com>
 <987909c6f52f046cee33fdaeb4719c131946069b.camel@intel.com>
 <eeec630bd7f01f600ff3d067ab695794a81f4e87.camel@intel.com>
In-Reply-To: <eeec630bd7f01f600ff3d067ab695794a81f4e87.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB8186:EE_
x-ms-office365-filtering-correlation-id: ce5758f0-95af-476e-e11e-08de79b69feb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: fT5HonqaLW8KbWikZDIBX2PY/K40lA4EydLG7YUanx1VQgJlfI7/IuajtFWaUrEY9eGPU35+UUK+0Re8Xgh+En50iU2ezbWRszJMi9o8w+WYRFt72bTbEQ4QP54K6shObrgaOqGyAXZt2VfavPlTDbhJIQ6C6jMlMpmPaJ0S6rmGlufpTcGxRpyK3FdWoOeVM94HNhwGCn97mUIjK1f99P336m+CjVdH3jPEKC4pQerT1t66Y4O3wVc/RKBrB5kZl/eQqOE+cE9ZtcOkDOIbnDtE9H3raoUgZWf88IT/KfoYq2oKSE2Q+zfSYuL+6Wp6nD+aOtejh6Ce8boEdEusut4AaR7Zhc0d7POZU4WaksG6kZyxp6KB1uh3INb2hwCD2WN+xeZa3PM8Q2Xc1vPCclp23ognn3WTUkWNBgam8sy9r2HtrrzVy3d+jQ0jxx9kaoi0t00HwxvMrE1BmdovK+kEb3ezbs8HRg/8tay8ZTkqFIA5EkoOREYlA68VGtc8GygPEYu8hi6yT23jkgw5m8y5KTJJJnK5zHco0WZp8G2EBmaNVHBhv8CvOwICrsmJvpxiOeEtFXvaA7X/CYgvp9KUh6a++qPGKrYWM6pxmbd8h35o2fkRtMCqzeU3zvNxIZT7zZ0LMYdyVk8tp9JsK0JtPRunyn8kTPmq8JVh366RpHaxtvBIRxDqH/ohQwzkJhFBuSMARXGPwmNKGTKQRzYz0Y9ziP2/Ss8znyVLrPk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1hRZWxtM0hkNHZrRko5Q0xuWFNGU1RPYXZKbEowelpGS0N3bnZaOEZnSjZq?=
 =?utf-8?B?cjRtdmMxK0dUSktxTnE1NEdqVWQ1RzVoZXp0UlJ2VGNuZytRS1R5MWlGOUU1?=
 =?utf-8?B?Tm54bzk5MFhwUjZja25WVUMyS1NyR0RqdG9adm1ZUmlwODd2b1JrWHplTDlK?=
 =?utf-8?B?WWVLbk55Mk9Pci9CRlVoNlBJc1Q4MitCazBjeVRBdExiZVgwbHFSR2JLV0hV?=
 =?utf-8?B?bXlLb3hXWHp3YjhhQUpOTmlHQTZqVUpGWHNlR0trZFBVWHFodThiR0k0VlFF?=
 =?utf-8?B?WldOdDdzbld4NTVQQ1ZIUEFDVWFEL2NrWEo2U3djQ2Uzd3R4Ync1TDhiWDNK?=
 =?utf-8?B?eXBXeUFYSDRRck5VZmFnaVVoczNPcG9SOGczVzdKTkxtK2JTZkpaQVBQZzdG?=
 =?utf-8?B?aFRvMGRBRG9UQWRLc2NuWVNvd216MHdTY0RaV1VXQ3NSZkExRWF6T1JJbC9Q?=
 =?utf-8?B?ZzZUL0xJK0tSOVRkTXFORzFpS3FsV2xGUkFhT0RlQ3pDMUVqRmYxczhKVTBt?=
 =?utf-8?B?WEJOT2hFeHB1dm1nMU5UR2psN3p4c0pLQThCQ3lDTUYrajJOUGpublQ1dzRn?=
 =?utf-8?B?OGx4aTRFV3VnZVJwT2FhTCtuYzd3eEswdythOHpVRFdZdFdpZUVoOWdHY00y?=
 =?utf-8?B?bEQxM0lXRUhkUUo5UkZwU2Y4bTF4SHBoTm1oS0Yya0R3d0VxQWFZaUlBZEZ3?=
 =?utf-8?B?K2ZzQ1NBZ0liZ3hGZ1Z6ZUVtanFWd3dzNGVFbWhGeWRPbFRPYWJvOUI4bUNx?=
 =?utf-8?B?bUQ3N1U0KzZzVnVsODhPbGMzWFEyNWlwVllndGxncGNEdWhIekZOT1FoZUFU?=
 =?utf-8?B?Nnl4V1hFRnFaYlBQVVU3SExpa0NkU3lWRGxsZDVDKzRMWmxuNDR2eHNHR0tR?=
 =?utf-8?B?eXBVaGFqN2hJdGowaXVTOEpZTG5nYmh3TjRvbnkxSC9IdHJFRjlQQUtBZFBL?=
 =?utf-8?B?UU5sVlFyeVZXVG13MTNxMm1PRFFBSVlrL1VpQngzZVR0WlF2Y2JLZjdNL3Rk?=
 =?utf-8?B?bEd5MUlxdUVhT3ZWWHp0MFRyWEp2WHlIZHRDRVlBWHgvckJQSzNQY1VWTUVr?=
 =?utf-8?B?bDlJVVNxSGRlNTNHYWNraUNZOUdWUjdDTUVHTnJBSExVMTNZb0RYTjN6SUJV?=
 =?utf-8?B?K2ZLR0lQZVl3a0w3L1hSc0tmSlJXazhYRUYxOGZPL0xLRjl4bVAvN0lTSTRF?=
 =?utf-8?B?cjBCS1k5UjFKNmlvdkVHVElkdFBZcXVBOEt0S1h1K0hScmNZQlRZbDdvRjRq?=
 =?utf-8?B?a3BoZFlzNVV2VVRXNERmZUQzTEcydUZiTUdYblNlME5KOERsSjJzN2RWNHRL?=
 =?utf-8?B?ODBIK3NCMVpOYnNId3htSnUweWY1ZWlqZ09WT3BlNVI3RWFDN3ZEZm5PcEVs?=
 =?utf-8?B?SkdFV3hGankzV0VTRXozNnM3L1pCMWFVU09OQnFadkdPcCsya0prSG9xSnFl?=
 =?utf-8?B?K0F2MVZDaHgwQS9DT0dISmFla2ZKc2NoMkFxTmFaMnpaNGpDcVgyZDlpM21E?=
 =?utf-8?B?VHdUK2FRNENOM05rT2tKK2NFMWdubk9OaDBmeEcySENrOWNvQWxPbnB3blIy?=
 =?utf-8?B?Qml0L2xTNGhWWGV0Uk5STkJBNHlKNGpMNlh5S054U2xTNXBTbGFuQlBIZjIy?=
 =?utf-8?B?SmNKYnJFdE9Sa3U1Y082dHJqbWY4ZHhOczVSNUgzdWxhNzM2aUp4ZVcwQzJI?=
 =?utf-8?B?L2V3Vk93MTJGMUFQNlVzUkd6aHd1TENxTTFEZjNiOXY3QTk3MitEWmR6alZG?=
 =?utf-8?B?U09iMTh6RjhzejgzeHFqV2ZZL3JyK09yQ0ZYTk1lMkpEWWVWVndwRnRSQklw?=
 =?utf-8?B?UXJicEk3bUVhWm45TUFQZmgyZGIrTWZLZTAyZGxrM1FkQXluVzFaVXpPRzUw?=
 =?utf-8?B?SUcvQ0hxcnpXOUJnNXJWeThqRXExMk9HM0xFNmMrM05sdG9ablhkYXM0OTQ3?=
 =?utf-8?B?R24xd3VFU3hUVllXZkc1N0MwRVVGQmdVSkNDblZvMG1aZkozbFZUMlgrREkz?=
 =?utf-8?B?dXpLc3NNRlRoTmVNTGVWNmlrS3dpVFJ6ZEhRK3Y4UkM1cHArdTkxdFl0Wkd5?=
 =?utf-8?B?MEFVNkZWZndtZWVwa1Qxbm9LMEY3UWFoTDU0WDFEUlBnY29iU0VYcjZqQjhE?=
 =?utf-8?B?MXk0Tko4T2hwV3E2NlZiakVnYWpUbFhXc0tzbzcvZjJnR2ZYSmNGNjl4cmMv?=
 =?utf-8?B?VENwMzBOT1crT3VwamQyTFNUd2U3MEpPc0FUMElJM0Rtblgxby9VWDRTWUFD?=
 =?utf-8?B?MVl5eWdhRnEvekN1NHVhNHcxdjVWcG9CcVVScUxrSzBDdDNjRVE4NmNGZnl5?=
 =?utf-8?B?QWJJQ2JuZjRBYmFkZzFUNXFsb0c0b1NNMTJBL3l6ZFpJMmtubDkxQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5758f0-95af-476e-e11e-08de79b69feb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 06:24:00.7060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c9evzVKddXmSaEZOPUe7KDOISIrEKxjK6QFijGOiQUmXF7m7DLNs/UMQr5ajkB8wNpkbmuDXYxPl7MfHKY0P+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8186
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
X-Rspamd-Queue-Id: 1AEBA1FB1CE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,patchwork.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDQsIDIw
MjYgMTE6NTIgQU0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNv
bT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
OyBNYW5uYSwgQW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBOYXV0aXlhbCwg
QW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0h2NF0gZHJtL2k5MTUvZHA6IFJlYWQgQUxQTSBjYXBzIGFmdGVyIERQQ0QgaW5pdA0KPiANCj4g
T24gV2VkLCAyMDI2LTAzLTA0IGF0IDA4OjE3ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gV2VkLCAyMDI2LTAzLTA0IGF0IDA5OjM1ICswNTMwLCBBcnVuIFIgTXVydGh5IHdy
b3RlOg0KPiA+ID4gRm9yIGVEUCByZWFkIHRoZSBBTFBNIERQQ0QgY2FwcyBhZnRlciBEUENEIGlu
aXRhbGl6YXRpb24gYW5kIGp1c3QNCj4gPiA+IGJlZm9yZSB0aGUgUFNSIGluaXQuDQo+ID4gPg0K
PiA+ID4gdjI6IE1vdmUgaW50ZWxfYWxwbV9pbml0IHRvIGludGVsX2VkcF9pbml0X2RwY2QgKEpv
dW5pKQ0KPiA+ID4gdjM6IEFkZCBGaXhlcyB3aXRoIGNvbW1pdC1pZCAoSm91bmkpDQo+ID4gPiB2
NDogU2VwYXJhdGVkIHRoZSBhbHBtIGRwY2QgcmVhZCBjYXBzIGZyb20gYWxwbV9pbml0IGFuZCBt
b3ZlZCB0bw0KPiA+ID4gaW50ZWxfZWRwX2luaXRfZHBjZC4NCj4gPiA+DQo+ID4gPiBGaXhlczog
MTU0MzhiMzI1OTg3ICgiZHJtL2k5MTUvYWxwbTogQWRkIGNvbXB1dGUgY29uZmlnIGZvciBsb2Jm
IikNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50
ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jIHwgNiAtLS0tLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jwqDCoCB8IDkgKysrKysrKysrDQo+ID4gPiDCoDIgZmlsZXMgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4gaW5kZXggYjMz
MzRiYzRkMGY5Li5hNzM1MGNlOGU3MTYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+IEBAIC00NCwxMiArNDQsNiBAQCBib29s
IGludGVsX2FscG1faXNfYWxwbV9hdXhfbGVzcyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRl
bF9kcCwNCj4gPiA+DQo+ID4gPiDCoHZvaWQgaW50ZWxfYWxwbV9pbml0KHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ID4gPiDCoHsNCj4gPiA+IC0JdTggZHBjZDsNCj4gPiA+IC0NCj4gPiA+
IC0JaWYgKGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gRFBfUkVDRUlW
RVJfQUxQTV9DQVAsDQo+ID4gPiAmZHBjZCkgPCAwKQ0KPiA+ID4gLQkJcmV0dXJuOw0KPiA+ID4g
LQ0KPiA+ID4gLQlpbnRlbF9kcC0+YWxwbV9kcGNkID0gZHBjZDsNCj4gPiA+IMKgCW11dGV4X2lu
aXQoJmludGVsX2RwLT5hbHBtLmxvY2spOw0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IGluZGV4IDAyNWU5
MDZiNjNhOS4uZTc4MWQ0ZDBkZDFiIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IEBAIC00NzA5LDYgKzQ3MDksNyBAQCBzdGF0aWMg
Ym9vbA0KPiA+ID4gwqBpbnRlbF9lZHBfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAsIHN0cnVjdA0KPiA+ID4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gPiDCoHsN
Cj4gPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiA+IHRvX2ludGVs
X2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+ID4gKwlpbnQgcmV0Ow0KPiA+ID4NCj4gPiA+IMKgCS8q
IHRoaXMgZnVuY3Rpb24gaXMgbWVhbnQgdG8gYmUgY2FsbGVkIG9ubHkgb25jZSAqLw0KPiA+ID4g
wqAJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBpbnRlbF9kcC0+ZHBjZFtEUF9EUENEX1JFVl0g
IT0gMCk7DQo+IEBADQo+ID4gPiAtNDc0OCw2ICs0NzQ5LDE0IEBAIGludGVsX2VkcF9pbml0X2Rw
Y2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3Rvcg0KPiA+ID4gwqAJICovDQo+ID4gPiDCoAlpbnRlbF9kcF9pbml0X3NvdXJj
ZV9vdWkoaW50ZWxfZHApOw0KPiA+ID4NCj4gPiA+ICsJLyogUmVhZCB0aGUgQUxQTSBEUENEIGNh
cHMgKi8NCj4gPiA+ICsJaWYgKGludGVsX2RwLT5lZHBfZHBjZFswXSA+PSBEUF9FRFBfMTQpIHsN
Cj4gPg0KPiA+IEkgdGhpbmsgeW91IHNob3VsZCBub3QgY2hlY2sgZURQIHJldmlzaW9uLiBEUF9S
RUNFSVZFUl9BTFBNX0NBUCBpcw0KPiA+IHN1cHBvc2VkIHRvIHJldHVybiAwIGlmIEFMUE0gaXNu
J3Qgc3VwcG9ydGVkLg0KPiA+DQo+ID4gPiArCQlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkYigmaW50
ZWxfZHAtPmF1eCwNCj4gPiA+IERQX1JFQ0VJVkVSX0FMUE1fQ0FQLA0KPiA+ID4gKwkJCQkJJmlu
dGVsX2RwLT5hbHBtX2RwY2QpOw0KPiA+ID4gKwkJaWYgKHJldCA8IDApDQo+ID4gPiArCQkJcmV0
dXJuIGZhbHNlOw0KPiA+ID4gKwl9DQo+ID4gPiArDQo+ID4NCj4gPiBSYXRoZXIgYWRkIGUuZy4g
aW50ZWxfYWxwbV9pbml0X2RwY2QuIEFuaW1lc2ggaXMgd29ya2luZyBvbiB0aGF0IERQDQo+ID4g
QUxQTSBzdXBwb3J0IChodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1
NjQxNy8pIGFuZA0KPiA+IHlvdXIgYWRkZWQgZHBjZCBpbml0IHdpbGwgYmUgc2hhcmVkIHdpdGgg
RFAgcGF0aC4NCj4gDQo+IE5vdyBqdXN0IG5vdGljZWQgaXQncyBkaWZmZXJlbnQgRFBDRCBhZGRy
ZXNzIGZvciBEUC4gSS5lLiBubyByZWFzb24gdG8gYWRkIGluaXQNCj4gZHBjZC4gU3RpbGwgcGxl
YXNlIGNvbnNpZGVyIG15IG90aGVyIGNvbW1lbnQgYWJvdXQgY2hlY2tpbmcgZURQIHJldmlzaW9u
Lg0KPiANClN1cmUhDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0t
LS0tLS0tLS0tLS0tLQ0KPiBCUiwNCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gQlIs
DQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4NCj4gPiA+IMKgCS8qDQo+ID4gPiDCoAkgKiBUaGlz
IGhhcyB0byBiZSBjYWxsZWQgYWZ0ZXIgaW50ZWxfZHAtPmVkcF9kcGNkIGlzIGZpbGxlZCwgUFNS
DQo+ID4gPiBjaGVja3MNCj4gPiA+IMKgCSAqIGZvciBTRVRfUE9XRVJfQ0FQQUJMRSBiaXQgaW4g
aW50ZWxfZHAtPmVkcF9kcGNkWzFdDQo+ID4NCg0K
