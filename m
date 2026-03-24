Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOJQJjIvwmk+aAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 07:29:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F60302F54
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 07:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE04A10E2C1;
	Tue, 24 Mar 2026 06:29:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrTapDJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5403D10E29F;
 Tue, 24 Mar 2026 06:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774333742; x=1805869742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LkBLi3/LTfFJFT1nDBg5gnpqdsZtiisg+LL966GgH6Q=;
 b=KrTapDJEefmvlDDwNeeltx0w7JkliKSmjyh5egfg8pFx6Hcw2dnKWGGI
 etLRCv9c77CsuGI5bDQ1ddxVOMCawbNLTrZ7nJvHoLWF3U77/6j55p3PO
 n7VrvY2l+2g8qQuIz6IRtwpi56WUV/0uC4zTHJ/qm2mfmGEz7lGF4Zyrv
 ME07yU5gE0j8R0raz1D4YitMQMDkcpUSI/T0vDZyYp4TKZkl6/KpebtjW
 eStWzUPtsIveXpaRLAPoZCXVKdecfI7+Ouv7NbZgzd7oQIdwKw5mhmm5m
 tSZ1CZ7UnkCcycQX2wi9QmGwyqltT15TGTxRRKzm74yoJ3SgaUq6rWKRt g==;
X-CSE-ConnectionGUID: sN4RUu/SQFyuPGmzqtKkQg==
X-CSE-MsgGUID: 0oy7YhWAQSitJsD+us/BDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75314464"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75314464"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 23:29:02 -0700
X-CSE-ConnectionGUID: NQyibHajR0G6+ZwMrajlJQ==
X-CSE-MsgGUID: 1h+3JQEYTGet8a1U0dyvEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228743364"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 23:29:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 23:28:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 23:28:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 23:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBhGW3eflE2PEqbfz0SRkPwpiaL3CewDFr2pic2w3v7Rrf1CK61dG0DXXz5G/lGsYE5cY8Wd7WmnaUQfyYGxOHUiaFVtvwKnmsk84lfAr77mhI4S/gAscm/nLoAv0PdevYgrxeizbq+oeAz05yYBOO3jyA9HEpFQs6iO4YTqDu7EJRFt2/NYRGNdjR9h7EOF0AlxqhUXMK1yh97pKXn7T1/k59Uvy4aqAKsdP8Y8mwTE7OMQvinSvGso5ylsDRy2XGEw7aRfY0Sosn6Qf5r26o1I3gVaEBX6t0LORmkl/AJTiMqz6CAtubG4rcMc1r5Hlhxw8YcfszFb2tYLVzTENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkBLi3/LTfFJFT1nDBg5gnpqdsZtiisg+LL966GgH6Q=;
 b=Q+BN4reu4h0vbgHgz20vyYHlkPIwuLfsdqaIhslQbbp/xQv+RL2/go2WmhLyrlPUC14cTKurhdCDydUqRFj6SNS4KAVCcV56SIn+8aJ6JiYrOUWFJdQETDXfTtfbLDt6v+ydamJRsNAj2IRl3MOMZgQVMHeVGVYV6V0AUZUd9pN05dPnQO+FhgKpE9u37Hc1VgvwSTyw00IM2VlIeftRmweQcLQUBtaSEqK9hvvU2aRIWqGPxVdfnG8NLiLktBpY2BGEFLgS6ZQjjFTBx3XD+B9vF8lcdLU7UMDTISHJCWg89OHfS4HuS5XBEiKKgTeFjcvvUFuhIHRNKK2qm67Haw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB5232.namprd11.prod.outlook.com
 (2603:10b6:5:38b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Tue, 24 Mar
 2026 06:28:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 06:28:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/vblank: Extract get_vblank_counter_and_timestamp()
Thread-Topic: [PATCH] drm/vblank: Extract get_vblank_counter_and_timestamp()
Thread-Index: AQHcuw00BX0pYLsolkSkXPkmekVeULW9OLHQ
Date: Tue, 24 Mar 2026 06:28:51 +0000
Message-ID: <DM3PPF208195D8D6742D234C82168D9A759E348A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260323213645.10965-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260323213645.10965-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB5232:EE_
x-ms-office365-filtering-correlation-id: 0fd574ea-b843-4d98-b857-08de896e9dc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: enSyHn87Ut0v94/O4Tv9wIA3z7BBu0Ca3FgPALNpsFD+7j6MMPk1qmfybhwHBLDCl/bpnCBa9aPJg+nSfuiFLIlZmsTnQd68PxFKVLIeNBpEtRoDr0dkiz3p9NZe6KoVkw1gxnZDL9ZQ9G3Ai1TEN+uFD6keMHyahxrW0yH7CQ8z5JxxmHVvMVNiLJBGKIUTJyZIGaruRMlLL0JKm6K8fsBqNN8BjBWzmjUnlpR1L0rvLZbNAk969qJwVeEBVCkNKPGOdWSvbh5DgDxuyg2wqpmXZlRYwbMyCROwI7tt6MOtEIJ5CawFEX2xYvNMkpHZwnPmQAJoNgcpFZlrtUREfOyXAR3316T5ThI74j6mdTCbwVbZY4KXSdgcDNJ4ew4YA0+Y1NOCFXcmAAtzZV429cxGfh3O8HU/c2gEB1L+ooLcxx/rh6JzhjqqBlXY6q35rY4+2eElZj4hoAPPfPCnWCpqMNyeUJvZDzoeB72w75sRz3EBtWptLC0iOcVkQPcIwvZc7OPLAglktcW6Y1ksLH0TThDz1LwHxAbk0uvcJvTL6sTPU2guGkc1oNgd6aUVwhI9Iz4cg55gr8NNNYunDQC9I+XcNu3aWaABdMeytnBGlaBhyDVVrJLH1sSz1WTTIOsSZk02GQpzK40Bw3A6s3zovUoQZ+gqbrG3tRSF3WL3fRQ8c+gWcefT6WNqcSSvqLJgKNWp4bIgQx4tcwI3WhyM4ae2ZIvyKXeJs8G7s6tDNVXALnc/W+epmp96vlLU+OLo78NqsapuyqlMpiH20jaC2QekrS8WjNNbmE6LVps=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clB3aEdjbng4ejg0OUs1aVFNcmoySDVET2VVdG9FSmE5UktyQml1ZURKWTdm?=
 =?utf-8?B?V0ZVNGRWTFgxUFArME4wbExvV0FsTUxyQThJa3dRUitrNmY1cGdhdkNwWjhI?=
 =?utf-8?B?ejBObHRjNUNuZkpqckhVdk9hMjBVTHRYek1CS1VPMVJVT2lZRGtrSm9yNnBQ?=
 =?utf-8?B?cFhYcC9kdU9pcnJFUDBuZ3E4QUhmWHJQZi96Ni96bU1xdDA4Q1ZUR2Riczlp?=
 =?utf-8?B?MFlmU3kwNm5kaTh5eldESlJTM3paZVQyaXVENUZWaEdyb2RxUVdScGVaS3pN?=
 =?utf-8?B?bGxxWno0MkcrMy9Rc2wzR3VMS1VXTkFXRnBXTEJZaEJWUDVrc05yZzN5Wllm?=
 =?utf-8?B?eG1RSFVKeDNYOXV1RU10WExSUDNsRVVpTHp0UkV1OHB0T0E1Z0g2MEJOSkJy?=
 =?utf-8?B?eWs4WEY1OVh0MXI4R3JvamEwUGRUZjRWdGRzR3dVakhaemhSN2hQUkJmeE9I?=
 =?utf-8?B?TzJjNW1BTEJpYllDbU1kOFdkZ2o4SU40TVhmS3NFNndJdm5VT2VrbDhjSjd4?=
 =?utf-8?B?T3NPYmo4NjR4NFV1YTdpUTkvWDJacFBhNTlxYnl4dUVoN3hXU0dMaGxZQis3?=
 =?utf-8?B?SzUyVUZ4amZFS1ppbVRWeERmWlF5bVhBZ09ma3lLRUFGTHdaaHBOTnlNZnBn?=
 =?utf-8?B?Z1V3eUQzcmt5dXVuMXBGeDlFTUVoYW1KbWJPUVRxaEJ4ZDBlRWlTTUNkTFJI?=
 =?utf-8?B?Vm5aM1hGakpmSmdqdkNnNk04SFlKa2JYUVRGUW1yK1VvUjU2ZHpqWCtadno5?=
 =?utf-8?B?YmpyRGcvTHFVa1VDd2FJdVJjSEN1bjllZXIybW9LKzl2YkRVVmwwamtGeDBY?=
 =?utf-8?B?SVJWdllvWFdKRXQzWFRNVitvSlpyYXVBNnkzdUphMkRrOHBMVURURjdQZWlZ?=
 =?utf-8?B?TThZR0xRM0pIelhEd256RW9vdXY1M1JZTlBuVFQ0eHcxbjFvb3hmY1pBQ3Az?=
 =?utf-8?B?S2JHTitMbXRxOW5JaU8rODQ0YkJsRUNFTHdHVzBXS0cwWWFFZWg5bkVZZFhU?=
 =?utf-8?B?cy9UTkNlaHpMM2NZWXgxOXhpb2xqK1JSc1c2aWNLWFBxb2RMZHl3b09GRHV0?=
 =?utf-8?B?N1NBTFhSbVYxUk5HZmk2THErZWplSWRLa0Y1T3Jvcmx6cUZXeHpTUWlnRWRR?=
 =?utf-8?B?SU54YXBIVnJZczZhVUVkcitTQ01DQVJQWWt5ZzJEd241eDI2ZGN5dHl5WUNJ?=
 =?utf-8?B?bGQyR2ZBL0sxa0E4WFFPUHlnMHJDYjkyQUF0SnZuUzQweTRYYVZvbVV0Ymk2?=
 =?utf-8?B?SU9NR1NQV3VJS08vMVlIL2xZeFNCOExuTzNmWUtSdzdFRE1GYWRRMGFJYU5m?=
 =?utf-8?B?QjBPUitJZDl2WER5R05IcGhUK1I2d2F6aDFpdDNjNW51VzEwU0NnRW1TTUI1?=
 =?utf-8?B?dkNHcUZCUzZRczFWWjlPOXJwcmJHMjNRZlpZaUpRSDJXTjVBWFJZSHA4TUEv?=
 =?utf-8?B?Mk1pMzhiOHFueVZzYnNyR3RHazBUWlFVanVMdHdIVmVGV0gvR092WHBUZFFT?=
 =?utf-8?B?K1hUZ2V1b0hMbGtVZFpHYzd1U2JGU1B2OWUwSENLMU5xbU01eFgyYlJXVll4?=
 =?utf-8?B?SlcwTUhWZEVrWUpkNFNWcHJtczJiOU9pc2ZCM2pxREVpRmpHeHlDT0tHcHpQ?=
 =?utf-8?B?YTlBVC9XL01Ka29JZkU2MUE3ZGdpSGNFTFJUWG5iQU5lRk1BbnF2SzZRODlC?=
 =?utf-8?B?MVpTYk5DcUlSSU1xeUUvNnBVTnBSRlF1RjZkYy93YUJOakNib2xmM0NRUFN2?=
 =?utf-8?B?NndSQ1YycUd4STVMOENwNHdUQ1ZZOS9GdzNwNFZtT2hUL2JZMi9TYVQrZFNJ?=
 =?utf-8?B?bHMvMTR0bW1lZk01K0ljOGM1YjFiaTdFR3Y4QStFVzBTaEdrbXFzMUMvSU5Z?=
 =?utf-8?B?V2pEbzZtZ1lpM2F4K0RYRHlSVmY0aEk5VjRLMG1sYVhKaDV2S0dkamVobWc1?=
 =?utf-8?B?bktPS0h6ZGI3ZHF1VnljRXh2VHRKSFFUKzdJVmlPM3hTd1E1QnZzUGlFUEFy?=
 =?utf-8?B?WnQzZ203T0N2dFdQUVI0ZU94WFZ2ejVtYy9HMHAyd2EzYU9jNTJGd2RNSHE2?=
 =?utf-8?B?SzBOMnhqWWZ0NWFlcXJnYWZxNUJkK2tOQUgvblBXdE9sbUJrdzRkVlZ5RWh4?=
 =?utf-8?B?clV1dFN2Y1Q2L25GVzZSV0dYTk4ycTNaMEF1Vi9QbDJBeEcwcDJkR3JsS09w?=
 =?utf-8?B?M05jU0VKOTcwemp4R2tvLzAxM2gyZ2k5Q2h1dlptTWRxK2NvK1BLOFdGN3hi?=
 =?utf-8?B?KzF1c0gvd2EvSE1KOHEvMTNXcHNKZlR5NlpnL3VGMW9ZNlFzdHNxV1NINFg2?=
 =?utf-8?B?R1hmQjgxbUdrQjk5NFhQd3VOa1pLaWw1MUlrMVV1VkJ6OGVnbGc4QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Tweqm8TCXas5EN5neayji/psXu4cpah7FtsfGDHGiif/1bruTYlPLLOPhss4rF4hFvaxmGreMJA/A1WaiQMyQb+5acPK2stAGT6kO+IDh3EZgakPhKnIrfQiZNdnaB98OI/zHs06FDf1sW4niSpDu0tYK17GkCVvObsjD5071B0uiTH/w3+Dy5E12Pi4VxIdlGcIJgwz7Ea2SQzPhRzKnSclroxI64xCvYpGowu/Dt4W1aKHe4bqKfdC8R4ajiEsyKGge/dRJCgnxLlcE0LOZf7zauKOavVrjMdXeQhDAXJEFk07E9ernxaiOTMlwka878PRtzjelmXjXj4vJDjs7g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fd574ea-b843-4d98-b857-08de896e9dc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 06:28:51.9146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qd9ZcF7wYWteb5QR/NOIvbFnUc5X00Iv2le0XK7f9QFKNRZ08agfgIY15TqUDSLpNKA3EAP+UEaaltT/mRdQlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5232
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 05F60302F54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS92Ymxhbms6IEV4dHJhY3QgZ2V0X3ZibGFua19jb3VudGVy
X2FuZF90aW1lc3RhbXAoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdlIGhhdmUgdGhyZWUgY29waWVzIG9mIHRoZSAi
cmVhZCB2YmxhbmsgY291bnRlciBhbmQgdGltZXN0YW1wIGluIGEgbG9vcCINCj4gY29kZS4gQ29u
c29saWRhdGUgdG8gYSBzaW5nbGUgYSBmdW5jdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0sDQpS
ZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jIHwgMzYgKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygr
KSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV92YmxhbmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMNCj4gaW5kZXggZjc4YmYz
N2YxZTBhLi5mOTBmYjJkMTNlNDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
dmJsYW5rLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYw0KPiBAQCAtMjM2
LDYgKzIzNiwyMSBAQCBzdGF0aWMgdTMyIF9fZ2V0X3ZibGFua19jb3VudGVyKHN0cnVjdCBkcm1f
ZGV2aWNlDQo+ICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQ0KPiAgCXJldHVybiBkcm1fdmJsYW5r
X25vX2h3X2NvdW50ZXIoZGV2LCBwaXBlKTsgIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBnZXRfdmJs
YW5rX2NvdW50ZXJfYW5kX3RpbWVzdGFtcChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiB1bnNp
Z25lZCBpbnQgcGlwZSwNCj4gKwkJCQkJICAgICB1MzIgKmN1cl92YmxhbmssIGt0aW1lX3QNCj4g
KnRfdmJsYW5rLA0KPiArCQkJCQkgICAgIGJvb2wgaW5fdmJsYW5rX2lycSkNCj4gK3sNCj4gKwlp
bnQgY291bnQgPSBEUk1fVElNRVNUQU1QX01BWFJFVFJJRVM7DQo+ICsJYm9vbCByYzsNCj4gKw0K
PiArCWRvIHsNCj4gKwkJKmN1cl92YmxhbmsgPSBfX2dldF92YmxhbmtfY291bnRlcihkZXYsIHBp
cGUpOw0KPiArCQlyYyA9IGRybV9nZXRfbGFzdF92Ymx0aW1lc3RhbXAoZGV2LCBwaXBlLCB0X3Zi
bGFuaywNCj4gaW5fdmJsYW5rX2lycSk7DQo+ICsJfSB3aGlsZSAoKmN1cl92YmxhbmsgIT0gX19n
ZXRfdmJsYW5rX2NvdW50ZXIoZGV2LCBwaXBlKSAmJiAtLWNvdW50ID4NCj4gKzApOw0KPiArDQo+
ICsJcmV0dXJuIHJjOw0KPiArfQ0KPiArDQo+ICAvKg0KPiAgICogUmVzZXQgdGhlIHN0b3JlZCB0
aW1lc3RhbXAgZm9yIHRoZSBjdXJyZW50IHZibGFuayBjb3VudCB0byBjb3JyZXNwb25kDQo+ICAg
KiB0byB0aGUgbGFzdCB2Ymxhbmsgb2NjdXJyZWQuDQo+IEBAIC0yNTAsNyArMjY1LDYgQEAgc3Rh
dGljIHZvaWQgZHJtX3Jlc2V0X3ZibGFua190aW1lc3RhbXAoc3RydWN0DQo+IGRybV9kZXZpY2Ug
KmRldiwgdW5zaWduZWQgaW50IHBpcGUNCj4gIAl1MzIgY3VyX3ZibGFuazsNCj4gIAlib29sIHJj
Ow0KPiAgCWt0aW1lX3QgdF92Ymxhbms7DQo+IC0JaW50IGNvdW50ID0gRFJNX1RJTUVTVEFNUF9N
QVhSRVRSSUVTOw0KPiANCj4gIAlzcGluX2xvY2soJmRldi0+dmJsYW5rX3RpbWVfbG9jayk7DQo+
IA0KPiBAQCAtMjU4LDEwICsyNzIsOCBAQCBzdGF0aWMgdm9pZCBkcm1fcmVzZXRfdmJsYW5rX3Rp
bWVzdGFtcChzdHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZQ0KPiAg
CSAqIHNhbXBsZSB0aGUgY3VycmVudCBjb3VudGVyIHRvIGF2b2lkIHJhbmRvbSBqdW1wcw0KPiAg
CSAqIHdoZW4gZHJtX3ZibGFua19lbmFibGUoKSBhcHBsaWVzIHRoZSBkaWZmDQo+ICAJICovDQo+
IC0JZG8gew0KPiAtCQljdXJfdmJsYW5rID0gX19nZXRfdmJsYW5rX2NvdW50ZXIoZGV2LCBwaXBl
KTsNCj4gLQkJcmMgPSBkcm1fZ2V0X2xhc3RfdmJsdGltZXN0YW1wKGRldiwgcGlwZSwgJnRfdmJs
YW5rLCBmYWxzZSk7DQo+IC0JfSB3aGlsZSAoY3VyX3ZibGFuayAhPSBfX2dldF92YmxhbmtfY291
bnRlcihkZXYsIHBpcGUpICYmIC0tY291bnQgPg0KPiAwKTsNCj4gKwlyYyA9IGdldF92Ymxhbmtf
Y291bnRlcl9hbmRfdGltZXN0YW1wKGRldiwgcGlwZSwgJmN1cl92YmxhbmssDQo+ICsJCQkJCSAg
ICAgICZ0X3ZibGFuaywgZmFsc2UpOw0KPiANCj4gIAkvKg0KPiAgCSAqIE9ubHkgcmVpbml0aWFs
aXplIGNvcnJlc3BvbmRpbmcgdmJsYW5rIHRpbWVzdGFtcCBpZiBoaWdoLXByZWNpc2lvbg0KPiBx
dWVyeSBAQCAtMjk5LDcgKzMxMSw2IEBAIHN0YXRpYyB2b2lkIGRybV91cGRhdGVfdmJsYW5rX2Nv
dW50KHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlLA0KPiAgCXUz
MiBjdXJfdmJsYW5rLCBkaWZmOw0KPiAgCWJvb2wgcmM7DQo+ICAJa3RpbWVfdCB0X3ZibGFuazsN
Cj4gLQlpbnQgY291bnQgPSBEUk1fVElNRVNUQU1QX01BWFJFVFJJRVM7DQo+ICAJaW50IGZyYW1l
ZHVyX25zID0gdmJsYW5rLT5mcmFtZWR1cl9uczsNCj4gIAl1MzIgbWF4X3ZibGFua19jb3VudCA9
IGRybV9tYXhfdmJsYW5rX2NvdW50KGRldiwgcGlwZSk7DQo+IA0KPiBAQCAtMzE1LDEwICszMjYs
OCBAQCBzdGF0aWMgdm9pZCBkcm1fdXBkYXRlX3ZibGFua19jb3VudChzdHJ1Y3QNCj4gZHJtX2Rl
dmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZSwNCj4gIAkgKiB1cGRhdGluZyBpdHMgaGFyZHdh
cmUgY291bnRlciB3aGlsZSB3ZSBhcmUgcmV0cmlldmluZyB0aGUNCj4gIAkgKiBjb3JyZXNwb25k
aW5nIHZibGFuayB0aW1lc3RhbXAuDQo+ICAJICovDQo+IC0JZG8gew0KPiAtCQljdXJfdmJsYW5r
ID0gX19nZXRfdmJsYW5rX2NvdW50ZXIoZGV2LCBwaXBlKTsNCj4gLQkJcmMgPSBkcm1fZ2V0X2xh
c3RfdmJsdGltZXN0YW1wKGRldiwgcGlwZSwgJnRfdmJsYW5rLA0KPiBpbl92YmxhbmtfaXJxKTsN
Cj4gLQl9IHdoaWxlIChjdXJfdmJsYW5rICE9IF9fZ2V0X3ZibGFua19jb3VudGVyKGRldiwgcGlw
ZSkgJiYgLS1jb3VudCA+DQo+IDApOw0KPiArCXJjID0gZ2V0X3ZibGFua19jb3VudGVyX2FuZF90
aW1lc3RhbXAoZGV2LCBwaXBlLCAmY3VyX3ZibGFuaywNCj4gKwkJCQkJICAgICAgJnRfdmJsYW5r
LCBpbl92YmxhbmtfaXJxKTsNCj4gDQo+ICAJaWYgKG1heF92YmxhbmtfY291bnQpIHsNCj4gIAkJ
LyogdHJ1c3QgdGhlIGh3IGNvdW50ZXIgd2hlbiBpdCdzIGFyb3VuZCAqLyBAQCAtMTU0Myw3DQo+
ICsxNTUyLDYgQEAgc3RhdGljIHZvaWQgZHJtX3ZibGFua19yZXN0b3JlKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHVuc2lnbmVkDQo+IGludCBwaXBlKQ0KPiAgCWludCBmcmFtZWR1cl9uczsNCj4g
IAl1NjQgZGlmZl9uczsNCj4gIAl1MzIgY3VyX3ZibGFuaywgZGlmZiA9IDE7DQo+IC0JaW50IGNv
dW50ID0gRFJNX1RJTUVTVEFNUF9NQVhSRVRSSUVTOw0KPiAgCXUzMiBtYXhfdmJsYW5rX2NvdW50
ID0gZHJtX21heF92YmxhbmtfY291bnQoZGV2LCBwaXBlKTsNCj4gDQo+ICAJaWYgKGRybV9XQVJO
X09OKGRldiwgcGlwZSA+PSBkZXYtPm51bV9jcnRjcykpIEBAIC0xNTU4LDEwDQo+ICsxNTY2LDgg
QEAgc3RhdGljIHZvaWQgZHJtX3ZibGFua19yZXN0b3JlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHVuc2lnbmVkDQo+IGludCBwaXBlKQ0KPiAgCQkgICAgICAiQ2Fubm90IGNvbXB1dGUgbWlzc2Vk
IHZibGFua3Mgd2l0aG91dCBmcmFtZQ0KPiBkdXJhdGlvblxuIik7DQo+ICAJZnJhbWVkdXJfbnMg
PSB2YmxhbmstPmZyYW1lZHVyX25zOw0KPiANCj4gLQlkbyB7DQo+IC0JCWN1cl92YmxhbmsgPSBf
X2dldF92YmxhbmtfY291bnRlcihkZXYsIHBpcGUpOw0KPiAtCQlkcm1fZ2V0X2xhc3RfdmJsdGlt
ZXN0YW1wKGRldiwgcGlwZSwgJnRfdmJsYW5rLCBmYWxzZSk7DQo+IC0JfSB3aGlsZSAoY3VyX3Zi
bGFuayAhPSBfX2dldF92YmxhbmtfY291bnRlcihkZXYsIHBpcGUpICYmIC0tY291bnQgPg0KPiAw
KTsNCj4gKwlnZXRfdmJsYW5rX2NvdW50ZXJfYW5kX3RpbWVzdGFtcChkZXYsIHBpcGUsICZjdXJf
dmJsYW5rLA0KPiArCQkJCQkgJnRfdmJsYW5rLCBmYWxzZSk7DQo+IA0KPiAgCWRpZmZfbnMgPSBr
dGltZV90b19ucyhrdGltZV9zdWIodF92YmxhbmssIHZibGFuay0+dGltZSkpOw0KPiAgCWlmIChm
cmFtZWR1cl9ucykNCj4gLS0NCj4gMi41Mi4wDQoNCg==
