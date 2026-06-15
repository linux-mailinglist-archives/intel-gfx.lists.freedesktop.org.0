Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zeCBNGiCL2rYBgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:41:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0794E68350B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:41:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=acD8A29w;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8947710E18A;
	Mon, 15 Jun 2026 04:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2321A10E18A;
 Mon, 15 Jun 2026 04:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781498469; x=1813034469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DayMPt29oWapG5VOQSXLbeqYOedI6/bRRv3T5tFlBl8=;
 b=acD8A29wL4vCErGEZtq50yrvZFKyOdeZPWkmEem8tULv11pN42kLg1+F
 MPRqTuwfxJNlG5X0AWGxaq/KLRAIiTHKsruhR0FSpABvagWn1HRCk10ww
 F2FGau7XR3EcDRj6YAQxJcS1gTpYyckloaYUNnhHeReR2+jHDL5jkOCof
 mMm3TCZqM4rDDKEqARKFtejWQZgT2ioUod3vw+ggefph/rWe7WdMcYi3I
 CHag0YuihgNJLDOFOB1Vnje0Z3JchZHB0Gm51b+CW2fExil0MtmRBSeb8
 wEu72phbiqQzggu2B6IPOKDoeQugeeweagdSX/mSowIh9FeKCcH3DpJIo Q==;
X-CSE-ConnectionGUID: JmcIHsyAQlmh3SIeCCFK1Q==
X-CSE-MsgGUID: tVohCqUESZmJlSrc31OYXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93617833"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="93617833"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:41:09 -0700
X-CSE-ConnectionGUID: bmrk6kg6SCKe5vOQMcBK+g==
X-CSE-MsgGUID: CcEEiVKpTa64GrlDCKhurA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:41:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:41:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:41:08 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.18) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:41:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NxrmmasBRVv3seK7w8XfsuBMhRxnK7Oqh5LJc3z2EawYr2mi1yeswbnBefdA7QZGXnEfXETM9z6eBmdAeok4HVpdqD6K/STj1Nw2UNno7qed0KljNVYdVsQqpMO4WAEwBSK22eWP43v6ZwigDkuH2P5vVZnU8EXjt9s+R/+GUhofuMxZx567IuM6fCVONeIPAFaHkJlIXJomNGS0eYa/V3tl+Nk/itnjPGPnB2uDM6HDB0lgkta/m9GgffAkUfzLXb/t51fpt2TUVhBpk7Lc/6om+y3yDOC0dxpazB0nFPe+TpTP93nNRoRAqONVStAmiIVnCA4rSv2XIRCxK0WHSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DayMPt29oWapG5VOQSXLbeqYOedI6/bRRv3T5tFlBl8=;
 b=hpe0ehsBKKXvgj7bSfs4YfRJbVV4BrtibCjRQ+8ZETepghsGV3xGlTvph8keh7IX6jxIqw3+G1nCrfDWdgnKsGCWEJsNpnK5ODT1biKOcnrWbUjmNYFQJDkfM5POZ4lgHIJdmFkdMDoiu1imWpS2Qjh4SyTVJMataXY+R+h7I0rAYRVvpKN+AJ+VLNAsnbiOFboLwGWrNZCOsUeDJQakzEXPJ3kR9feVvXNoFIKeUCOK9MyfuHUe2Y0KIv6V83wU2R/0N3LBzFewEDtjZJDHL3glIqMXWYUwWxO7tD2pAILJ6x3JRCjW8goekj5eo8LfV/p+12Ttl4vrUEIWPtC4Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CH3PR11MB7893.namprd11.prod.outlook.com
 (2603:10b6:610:12e::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.15; Mon, 15 Jun
 2026 04:41:02 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 04:41:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for each
 port
Thread-Topic: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for
 each port
Thread-Index: AQHc930C6ru6Fy/iq0C7vate9uaAJrY/EaxA
Date: Mon, 15 Jun 2026 04:41:02 +0000
Message-ID: <DS4PPFE901A304FB4F026BD63D97D447834E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-5-michal.grzelak@intel.com>
In-Reply-To: <20260608192821.3414590-5-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CH3PR11MB7893:EE_
x-ms-office365-filtering-correlation-id: 4b44a6eb-79c2-41c0-a7f3-08deca984dc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|3023799007|38070700021|4143699003|22082099003|18002099003|11063799006|56012099006;
x-microsoft-antispam-message-info: sd9Kq1ECCqgUuTVz03zmsoET+nGMdFKahhles/cl35qOmBMgsGKQ3zmj9aJ30sdojj45GWpHfYq07UVgk3RTFtJ8bronQmRs+TDVgVOX5tB7Fh1IyDlZqKy+ixWyKJRLfaAIxX7aUkkvSJaOcc1jMCfRX/orP/FJfsuCDdQYkvzgouy1CTzhrqfX8LhP7uY2oHxnVAvIKpg6QkNKmqgSy2BA5EmEIZj4gZchU0HjmAhYfYL/YNxkvS4L64QOrfawf4/n6VN0h/KEedoEkGRoxu8LQ2Zl6wUXXBN1twC8dpWOawyu3xSKXeiHmB36PsdUpLtk+kg7mjI10SC5oJBo3weXdRHZFjCY8EEn6Ijkc541fKC0R8W7BqwQaRZSIUCaiqaQNy12gOg9ex4Z5ugBS6UqWm9Pt/igIo0G5RnzOylCGB2JcOQsek6WJXwamE7zfpvSaMgOCn12tvojfYr+Hus3bdK18+kezP1IugNrdbkcDFvOMqzAWMPq7ETUImcOFEcSqsVyQEOrckwjOxXGasktHf206j9RtA8RnGNRUDbgjEO+r91ifu+ty1LbVGWhHBLYOTafrA/AWExW39oHuoBW9ZCNwDiAUIZzt0XEFhf4nIXr/OSfa9Tx3cfFUzrHTcunzfXkbWP79CQOoXroNEjV8r48kGKUN/ZOZdqOsEWPFYPReD3evGf52TDHy6+/Iz46SNsBuZ70Dj/zuJGRbyX0eL02QZM8bQpv046AgMEkvOyihg4U00ShrK2lRfhy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(3023799007)(38070700021)(4143699003)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkxYY0VoaHVsb0k5OUhSVEdRMVFsK0RPbUxIUlhQbVdnWHE3eUJUWDNWNU84?=
 =?utf-8?B?L1BRMXVReHFJQ0JraFN5bmt4N3VDZHZMSFFTK2kvdHorSG9HcWhYT05SVDBB?=
 =?utf-8?B?aXdFcmEzb09sYlMxZUhqazY2c1BGOW1hQng5YnZObUNRSGxsdkdWWGs4eERx?=
 =?utf-8?B?UGJYb0t4a2IrNWZiTXBURDNEZE5ZbnlPMDhSWmVvcEd3bG5PenJuUVJhZGRQ?=
 =?utf-8?B?MXRVUTJhSjBpUXBzRlJEcTlQKzJ1SGxlaWNGNXJYUGc4d2ZSby9MMWRNMVVl?=
 =?utf-8?B?YTR5cGthNGZoRWIxbFlUbHZBeTV3RTM0citnV1RIRWV5N0pQV3N5TndkeXBN?=
 =?utf-8?B?YVVKMmUyazdISVRIRVZCelI4YW9FU01xS3Z0Z3R6QlQ3ei8xbytxUTArWHNZ?=
 =?utf-8?B?SldJcmRwcWxybUc4WHF1WUFpZUs1NDY3NHhNQWs2dm5CU1V6TTNOMm5kZzlo?=
 =?utf-8?B?Q2RyekhMQS9CZFFHV2h4UWpXTGwyd05nYmFTRzVDS2wwbTIwSmxpVUZrSWZO?=
 =?utf-8?B?ZEJXOWt6NGs5eFpYWWhZZHRyenlCNlZ1TlhuREZScnZEN3Y1YXVDUThkZTJ0?=
 =?utf-8?B?czNnbjVMRzd1UmJ2SVdkbzFndDJnU1lDVXg0SUZLaTB5allUZU1QaHpac3dn?=
 =?utf-8?B?em1IN0dGZkpNRlY1V1ZBbitPUHcrTGVFRTljUlRwUENxeU1XK21IWENFTGph?=
 =?utf-8?B?MSswUjJWdTRCTnZZRDQxOHZlOEdjWm4wK0QzZGl6L3ErZ3BxVnBRd3RaQmNU?=
 =?utf-8?B?Y0FWMml2eUQxak03MWRNZUlrRlN1Ukk0RkNQUy93R2ptTTlPQWszdDJQRXBC?=
 =?utf-8?B?WUVJM0l4RWxlSVdJZHF4OVg5dGh2Vm1FdGpXN1FRV05Qb0o0NHl4b1dOd3Vm?=
 =?utf-8?B?Z0RyQjA2MmRwcUV0Z3RORm1zVERyM0pJdWpqRmN4eURlRnNLTXVXZmtGbDhH?=
 =?utf-8?B?T0R1amY0d0xTV2hNWGJVSEgvcnA1aXAwQk1lWHhKN1JaSGhRYkVKT3JaYVRM?=
 =?utf-8?B?a1RwNlNJUVNqeGp4dTNxSlNsZlVXTmUxRGJ4b3F2TG9wNUFhdHdmZUdyWUZE?=
 =?utf-8?B?NUFFWjR4Y2c2dXlXa0JqZHFnRVFjbU50MllZUFREazZZdkk2cGd6VlBhY2Rp?=
 =?utf-8?B?VGhNbUkvTkZQNFVlUVVGcjJZUWNiMDJDVjFQdTFZZmtTWmgyYkdINmZRNjhh?=
 =?utf-8?B?N1NxMXFTUFBEcjVqMGY1QzNSQWJFMStnM091MTNDOUtEZTFVWmpTNDg5b01K?=
 =?utf-8?B?THJwUURheWF5ODdRVVBLcUtPVTVBM3BtUzF0R0pXWUhNU0dka1VVTHJoUEVu?=
 =?utf-8?B?Q0pFUGloOU50b0EyRitXRU5CNEpzZHY4ZmxaMnV6NzkwZ0IrV1E1NzRWRjRT?=
 =?utf-8?B?MEs4aFpLbTJNVS9KSlUybHNJUW1xM0IvOEN2dmJhOUFFZ3NJS29TZlBIaXRa?=
 =?utf-8?B?aC85STNqUnFqSFB0TkcrNVRqZTN0K3RpSWpyd1hiL1hjczAxRXZ3Zkt5dnV4?=
 =?utf-8?B?b1dFalIrS2dIemM1aGl3TWtmMDJDb3lmY0FwMXpOTW9BSXIxL2RYUktHVTFa?=
 =?utf-8?B?Qzl6YTM3R0ZjZ3cxYlVsa2pMVmhGNHR1K3VWaFl1S3J4ck5JbHcvOVpRS2V2?=
 =?utf-8?B?SGhweGhaanlpSWtWdVAvb3RLUnd4QnMvQ3d3azVIdC9GcnhWUEVXN2NKUElG?=
 =?utf-8?B?cnRhakkvUzgrVFVzWCt4RW1oQ2pDMGlVcXJJdXRFdklvNU92cUFBQVVST3Fr?=
 =?utf-8?B?YjlQOWNwTEsrRFhxZ2ZCWFFkU3JDVVNnQ2ZmU0FXMTZZMGxZMXVudmNtV1hz?=
 =?utf-8?B?Z1F4clgrK29QNkZCTW03bWUxL29CSzlaY3pldC9JN1Q3RWxSM2FKWVlERlpH?=
 =?utf-8?B?bkxkUjYxMDJ0M0ZxT2JFaXpWandzMDVIZUttbW1Wd1ZYZkk4VFRIRWJtaW5k?=
 =?utf-8?B?RzdFQjJjWTdMT2VwQkFzcFZCb0F1ZDJ4Vzl2VXI3cFhjbUxZeFBUZWg4SmNl?=
 =?utf-8?B?NGhiT3ZST3BGcWN2WkQ2T2VtandoMUNrNHRBY3JiOGF2OHpPSzdEbnlzR1NS?=
 =?utf-8?B?WU5HZWRoSHN0UlZmaEdXVE1ZZzVGd3hQNlJDc2hwZzlyV1JXaHhKZmNvSEpt?=
 =?utf-8?B?YlV3VWJyRXJoLzI5QVVwakFBTWgzcVBWS294N0pkNTZ5Q2ZXWUM0VUN4cUk3?=
 =?utf-8?B?UDB6amNvUE5VVnkrdkdLbzlESTVhSFNiNG1GNERUbmpEYTN1RlMzM0tzYXdh?=
 =?utf-8?B?dlNnNjhkR2ZFN2wyckcwZjZOZ0tOcEg5Yk04SGJaR1NReEo1QmtKanFJRmls?=
 =?utf-8?B?TzFhemtnNzByY0EvWGdzYjVCOFJKUFZZWkhKa3BjMEpKS2dXaG9hdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qFpcR/4JNYYkMXIqe4pnpxcTSoovlCKZJOZabSoIYizuSxiTEhYOXXSlfiiDpfbCvYGiV/FvtCQOi2GxXUSGfRw4VXW+eWTl4zSqOQbIkBWn6iSVUCsYqH10FS3igzZ526g8I3iGh7+8JiGHa93mHn9b23f2UeyCaVGYMJTIdZ9MoLpIdsUNRAwBHOBdWMIlK56HOkCF3iNjSEy18ibY5MPl6F3YfA8TfgjAmlcFx4DZd0S6cvPpLOkxD6HW/x0nvlvBsoS/wBGDCk0Hf6y+tgwg2QXuafBooM3wa8gU4kYJuZYE/VhS0RYym7NyFgoJy09bxdiaEWXwpIlpE2+sFg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b44a6eb-79c2-41c0-a7f3-08deca984dc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:41:02.1855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D9JkwytHygzilP3saNub1kR2mx//FB75cLT5+2VyrBW4aG64YR8tj6WbJf2XkabtIVBqfgLkZFyW3RyAF2vzMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7893
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0794E68350B

PiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBHcnplbGFrLCBNaWNoYWwgPG1pY2hhbC5ncnpl
bGFrQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY3IDQvOF0gZHJtL2k5MTUvYmlvczog
ZGUvYWxsb2NhdGUgVlMvUEUtTyBidWZmZXIgZm9yIGVhY2gNCj4gcG9ydA0KPiANCj4gRXZlcnkg
ZGV2ZGF0YSBuZWVkcyBhIHNlcGFyYXRlIGludGVsX2RkaV9idWZfdHJhbnMgc2luY2UgZWFjaCBw
b3J0IGNhbg0KPiByZXF1ZXN0IGFuIG92ZXJyaWRlLiBBZGQgYnVmZmVyJ3MgcG9pbnRlciBpbnRv
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhLg0KPiANCj4gQWxsb2NhdGUgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgZm9yIHRoZSBwb3J0IGlmIFZTL1BFLU8gd2FzIHJlcXVlc3RlZCBhbmQNCj4g
aXMgc3VwcG9ydGVkLiBBdCB0aGUgc2FtZSB0aW1lLCBhbGxvY2F0ZSBzdHJ1Y3QgaW50ZWxfZGRp
X2J1Zl90cmFuc19lbnRyeSBhbmQNCj4gc3RvcmUgaXQgaW5zaWRlIHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zLg0KPiANCj4gRGVhbGxvY2F0ZSB0aGUgYnVmZmVyIGFzIHdlbGwgYXMgZW50cmll
cyBpZiB0aGUgcmVxdWVzdCBpcyBzdXBwb3J0ZWQuDQo+IA0KPiB2NC0+djUNCj4gLSBzZXQgZGV2
ZGF0YS0+dnNwZW8tPm51bV9lbnRyaWVzIGluIGludGVsX2Jpb3MuYw0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAzMiArKysrKysr
KysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4
IDcwNDY3MzQ0ZjA4ZS4uM2Q4ODY0Mzc0Y2FjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMzQsNiArMzQsNyBAQA0KPiAgI2luY2x1ZGUg
PGRybS9kcm1fZml4ZWQuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+IA0KPiAr
I2luY2x1ZGUgImludGVsX2RkaV9idWZfdHJhbnMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb3JlLmgiDQo+ICAjaW5jbHVkZSAi
aW50ZWxfZGlzcGxheV9ycG0uaCINCj4gQEAgLTcyLDYgKzczLDcgQEANCj4gIHN0cnVjdCBpbnRl
bF9iaW9zX2VuY29kZXJfZGF0YSB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXk7
DQo+IA0KPiArCXN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICp2c3BlbzsNCj4gIAlzdHJ1Y3Qg
Y2hpbGRfZGV2aWNlX2NvbmZpZyBjaGlsZDsNCj4gIAlzdHJ1Y3QgZHNjX2NvbXByZXNzaW9uX3Bh
cmFtZXRlcnNfZW50cnkgKmRzYzsNCj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIG5vZGU7DQo+IEBAIC0y
NjI4LDYgKzI2MzAsMzAgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfZGV2aWNlX3R5cGUoc3RydWN0
DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiAgCWRldmRhdGEtPmNoaWxk
LmRldmljZV90eXBlIHw9IERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVDsNCj4gfQ0KPiANCj4g
K3N0YXRpYyB2b2lkIGFsbG9jYXRlX3Zzd2luZ19wcmVlbXBoX292ZXJyaWRlKHN0cnVjdA0KPiAr
aW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpIHsNCj4gKwlpbnQgbnVtX3Jvd3MgPSBk
ZXZkYXRhLT5kaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+ICsJdW5pb24gaW50ZWxfZGRp
X2J1Zl90cmFuc19lbnRyeSAqZW50cmllczsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFu
cyAqdnNwZW87DQo+ICsNCj4gKwlpZiAoIWludGVsX2Jpb3NfZW5jb2Rlcl9yZXF1ZXN0c192c3Bl
byhkZXZkYXRhKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJdnNwZW8gPSBremFsbG9jX29iaigq
dnNwZW8pOw0KPiArCWlmICghdnNwZW8pDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWVudHJpZXMg
PSBremFsbG9jX29ianMoKmVudHJpZXMsIG51bV9yb3dzKTsNCj4gKwlpZiAoIWVudHJpZXMpIHsN
Cj4gKwkJa2ZyZWUodnNwZW8pOw0KPiArCQlyZXR1cm47DQo+ICsJfQ0KDQpTbyB0aGVyZSBpcyBh
IHNtYWxsIGNoYW5jZSB5b3UgbWF5IGVuZCB1cCB3aXRoIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSBpbiB0aGlzIGNvZGUuDQoNClNvIGluIHRoZSBjYXNlIHZzcGVvIG9yIGVudHJpZXMgYWxsb2Nh
dGlvbiBmYWlscyB3ZSBmcmVlIHRoZSBzcGFjZSBhbmQgcXVpZXRseSByZXR1cm4uIEJ1dCB3ZSB1
c2UNCmludGVsX2Jpb3NfZW5jb2Rlcl9yZXF1ZXN0c192c3BlbygpIHRvIGRlY2lkZSBpZiB3ZSB3
YW50IHRvIHVzZSBjdXN0b20gVlMvUEUgVGFibGVzLCBhIGZ1bmN0aW9uIHdobyBpcyBub3QgYXdh
cmUgaWYgYWxsIHRoZSBhbGxvY2F0aW9ucyBoYXBwZW5lZCBpbiBhIGVycm9yIGZyZWUgd2F5Lg0K
U28gbGV0cyBzYXlzIGl0IGRpZCBub3QgYW5kIG5vdyBpZiBhbnlvbmUgdHJpZXMgdG8gZGVmZXJl
bmNlIGRldmVkYXRhLT52c3BlbyB0aGV54oCZbGwgc2VlIGEgYnVnLg0KTWF5YmUgd2UgY2FuIGhh
dmUgYSBmbGFnIGNhbl91c2UgaW4gdnNwZW8gc3RydWN0IGFuZCBmaWxsIHRoYXQgYXMgdHJ1ZSBp
ZiBhbGwgYWxsb2NhdGlvbnMgd29yayBvdXQgJiBrZWVwIGl0IGZhbHNlIGJ5IGRlZmF1bHQuIFNv
IGFsb25nIHdpdGggaW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3ZzcGVvKCkgd2UgYWxzbyBu
ZWVkIHRvIGNoZWNrIHRoaXMgZmxhZyBiZWZvcmUgd2UgZGVjaWRlIGlmDQpXZSB3YW50IHRvIGdv
IHRoZSBWU1BFTyByb3V0ZSBvciBub3QuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4g
Kw0KPiArCWRldmRhdGEtPnZzcGVvID0gdnNwZW87DQo+ICsJZGV2ZGF0YS0+dnNwZW8tPmVudHJp
ZXMgPSBlbnRyaWVzOw0KPiArCWRldmRhdGEtPnZzcGVvLT5udW1fZW50cmllcyA9IG51bV9yb3dz
OyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIHNhbml0aXplX2hkbWlfbGV2ZWxfc2hpZnQoc3RydWN0
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhLA0KPiAgCQkJCSAgICAgIGVudW0g
cG9ydCBwb3J0KQ0KPiAgew0KPiBAQCAtMjg0Niw2ICsyODcyLDcgQEAgc3RhdGljIHZvaWQgcGFy
c2VfZGRpX3BvcnQoc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQ0K
PiAgCXNhbml0aXplX2RlZGljYXRlZF9leHRlcm5hbChkZXZkYXRhLCBwb3J0KTsNCj4gIAlzYW5p
dGl6ZV9kZXZpY2VfdHlwZShkZXZkYXRhLCBwb3J0KTsNCj4gIAlzYW5pdGl6ZV9oZG1pX2xldmVs
X3NoaWZ0KGRldmRhdGEsIHBvcnQpOw0KPiArCWFsbG9jYXRlX3Zzd2luZ19wcmVlbXBoX292ZXJy
aWRlKGRldmRhdGEpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGhhc19kZGlfcG9ydF9pbmZv
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSBAQCAtMzM4Myw2DQo+ICszNDEwLDExIEBA
IHZvaWQgaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KPiAgCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShkZXZkYXRhLCBuZCwgJmRpc3BsYXkt
PnZidC5kaXNwbGF5X2RldmljZXMsDQo+ICAJCQkJIG5vZGUpIHsNCj4gIAkJbGlzdF9kZWwoJmRl
dmRhdGEtPm5vZGUpOw0KPiArDQo+ICsJCWlmIChkZXZkYXRhLT52c3BlbykNCj4gKwkJCWtmcmVl
KGRldmRhdGEtPnZzcGVvLT5lbnRyaWVzKTsNCj4gKw0KPiArCQlrZnJlZShkZXZkYXRhLT52c3Bl
byk7DQo+ICAJCWtmcmVlKGRldmRhdGEtPmRzYyk7DQo+ICAJCWtmcmVlKGRldmRhdGEpOw0KPiAg
CX0NCj4gLS0NCj4gMi40NS4yDQoNCg==
