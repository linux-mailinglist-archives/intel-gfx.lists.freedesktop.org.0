Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLZNF4LjC2qdQAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:13:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6074577268
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA4210EA3B;
	Tue, 19 May 2026 04:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJWNLrsx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9609010E108;
 Tue, 19 May 2026 04:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779164030; x=1810700030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fzb+B9E9/2CL8B8JvevPeDHle3KefRjXMf43qQSmwXw=;
 b=kJWNLrsx7ZB/ZCMPEfoEOB/4/0kDiRmD3wuAd6HFLiSDcC2xW7TtDfNk
 NsBK6ZcgOfOdhBWqgRIqUhQhw88mUegCuRhL0JnNsGtQLA+3MTceQ5d7u
 8UkD5T42Itt02CSQQM6xT8Y5d2Vyr1ZcyHeyRWpIP8iFmn/zsNlAeN313
 6R2sTyBr2txfVF1V5fh7TLyn5ASO2xe9YW7YV3BZvaq0/WZC8W5c6brB3
 tFmFTjmjisWIlsQYFFzfjdY1vUMT8n4HBRRjB3aqPuhRBZ2mj4IXAeYj7
 xTa7TKdmGSDGSUPZ3W2byCKfuBTost11PCZ2ncjxhLt9EGm9Rot37IND5 Q==;
X-CSE-ConnectionGUID: 8/QE9PoYRFmMMjcE7tFrAQ==
X-CSE-MsgGUID: jLSGEZtASsigIx0gfh+nmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="79054598"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79054598"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:13:49 -0700
X-CSE-ConnectionGUID: GDcjjDo9QTalIx8Vz0ZkMA==
X-CSE-MsgGUID: M5KinpYeTBqp8WRYt1yWAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244636253"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:13:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:13:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 21:13:48 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:13:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k/jN3EJd5efUZDA6fXwUB1EHXql2mLoR4FNf6GsoIY5foDLRVfUUy3nE7ZvgUtdfmAuqjUCSAxcXUdQomQJTfpDzu8QHuu7Uc++Zgjt4y9en8VCTDpDZOeQBvtbDi+bnx/H7RVyJ4kYRh30JLKgLc3jaJl+A3OxnsCWLmljXI5G7TN/h8HMLMQh7T5ucHJrckE6TAgHqQ4adC8rv8SK8assksdefiEVx0mbfdcL24aFD1e/YdMkUHhlheoJkwWJdHny/KKVj/qXSpoQSou75zRDtM0i5+OfA2roPuCMXgCGKuOd+yWU6ga7GWCCmyxezgzb8vW8QZJyaQBntm5YcdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fzb+B9E9/2CL8B8JvevPeDHle3KefRjXMf43qQSmwXw=;
 b=D8dWb2Ru12qRMJj9teOqgnOUlQq/QXLaaczZtbjuij8oP9z4/08QaTGG0mDOFDYhqQ+TzyamdbI6Gy8EbZVQHccFas6Ni/qsFf3TfEBYCM56N79M86N/7Rai9bho8tT+NhETVoeaJ0zWqvU2VHORwzOwYq9oac+8gJsZppxfWlf5v+nj64rt0gVuj5Bqu66yMW50T9MGO0wlM6DZgKX9cjtc7dxDZRxoQLG/QqMLNdRLEOf7cCbiYrdOiSLd3bvOcaqL8nhIz9NsfIvGJ9TT/taJso+kK5/AkIxGCiA/rQNYOVysKbG+neT9DmnmnrYuOpo5Eq47Kkqcw+Lx959Kxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA3PR11MB7581.namprd11.prod.outlook.com
 (2603:10b6:806:31b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.13; Tue, 19 May
 2026 03:58:28 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 03:58:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 01/31] drm/i915/buf_trans: align xe3plpd with VS/PE-O
 layout
Thread-Topic: [PATCH v3 01/31] drm/i915/buf_trans: align xe3plpd with VS/PE-O
 layout
Thread-Index: AQHc3cFPqgMG6T01g0KiTGUDPMVY1bYUy9oQ
Date: Tue, 19 May 2026 03:58:28 +0000
Message-ID: <DM3PPF208195D8D615B34E58CF20078844AE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-2-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA3PR11MB7581:EE_
x-ms-office365-filtering-correlation-id: 769ac3b3-08f5-4436-3ba8-08deb55ae283
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|4143699003|18002099003|3023799003|56012099003|22082099003|11063799003;
x-microsoft-antispam-message-info: WidbC9YJTiDdCNYCMj3bvpMEEUWV46LM87h84/hSgSet8rx6sK+Hbn66nybaRPLLVHhuhz84UDhTbpNCBsVz4baGSFRKNhSVPJdFuhOxm4HSqrXyoLNCOJxAQguffQEgBj3+OtJP0DiwrfAOHGq4sJjTHZTh0X5l++A9SJeSkaRNvu4pfCz8eZCm4CHnG6klKMz88zFQ22oq9aAu1O6UOjto0a8racqMoMVyuk4kVxPk2eiE85nkE6GYkuLhiLtAzfJfnHChLUf9oRj0+sffL7BzDId6j9yw3lzBeMxk3/tZWRi4PART4XcSzEo/3eQYH+6cU1YN4Zdro82LBMiG9ESEg2D9MUx2Ig20xGoG7C8csUONIfeylvxIge6Fzkg+8r00vGa0tDo2g8Ud2FmpmjS1Bt3fcQouHfV4/ezjCTc7ZQB7+fAez1j3d4Ba80GLSY7ajpI01ebWh8ogp/hxbjv/lrd4AF/jEEPN+iig/dUkTCDMDPk9QrKps/KHnIq+4xPcbP8o2Tuhuhyo3/MbUzr32H67WsmcOaS8iAx0hdNmwhE3WzHXx0lf6OsOJ0rLD4eY7b9YxjC6r6E3EBKNOJZKiNUogQVjE8KiQ98Ez26nfGW1D49HSDXoTHGyQPfopD9ugC/E+QWbbZLK8aJhdaM4ugm8j5psjZDJmLzoEECJFTKtcrDTTie7UrslD/AIjL9J0NeEEtVFSUbByuz9+SvK74lW6WjoopSiZJ0DLBS1AluCymFPsZYEWyJP/w7D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(4143699003)(18002099003)(3023799003)(56012099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clYzU3hWRWhKWmloTkZyaHluUnNjaGFFdy9rVFVJVUVyME82OE5wK0Jma3U2?=
 =?utf-8?B?dEVwTmdtMWprOE5POVo3MHFZQXk0dVFvT3NMNzRpeXk3ZHFVUWNXbXd5Zm1S?=
 =?utf-8?B?eStCb1NiZHR0NGkyajJaUzFSN1FUa2hIQ1gyL1FsRkdXTng2ZnVKbVBGeTlP?=
 =?utf-8?B?MEw2aDRCUUM0Wm11RFNTcmgrdG0xd0M4aWdSaW5wOXg4dmVNS3dkaDhmSXZG?=
 =?utf-8?B?QllPSzhvRzd6UzBHb1UwYmtCZ00wd0JFRm1NcHRwTk9rVnFCemtXWFRkandt?=
 =?utf-8?B?clZnRGRwNFdMb2ZOWnltRUZBSGdZNElWVUZWN0Vnd21wUWJISzlsTHVHMGhK?=
 =?utf-8?B?Y0pWNzdjZnNzRWNNN3Fxa3JscEVoOVhaSnZsUTFQQklLV1F4Y2VwOFRYSW1X?=
 =?utf-8?B?ZThYM0ZMaTNhNGxYVlhxTkhkS0x6MkNGS1djejdpS1htSzRNMWpHZ2tPY2hs?=
 =?utf-8?B?dGVqc1dwcituWHV0Z3I2QmFLTXYzKzJkK0tjR3d3UlgyNFhqWEJLRmdkeG83?=
 =?utf-8?B?dUZjOFhQYmZoZHBuQzdmOTAzZFhBZkc5VWhlc3M2ZXVRV20zb0l6Zk5WMGZE?=
 =?utf-8?B?SFJsM1lrUStPT2VhaXlqTFFhMFZTOXVpaEh1UU9jMHErSFF6UVdZWGxmYXRQ?=
 =?utf-8?B?UVNNYjIxbzJHK3Z5NHJURWUzeG1sSy9XbFhPVXF2eUNYYXQwQlNML0dKeGxK?=
 =?utf-8?B?dGxMRTVPRTNSSGJTd1V4cDJKbFluMEFIZGZvMTV4Z1greG1MaXpkQ1FzZTFI?=
 =?utf-8?B?dUN0ZEZ4RGpPN2tFdXBJL3I1NnoxN3QwZ3B6VllRMHNpYmNkaE5uRlNqU082?=
 =?utf-8?B?RzdaMmpqc3FvbC9RbXlib2NrdVBmMkhCb25kekkyeW5aVkJlUEV4VnVQRkxH?=
 =?utf-8?B?bndaL0xzazc1VHArbGdWbHROYWRIc3BOZ0s4OWZiZ1NkemlqMTRFcEVEaWFR?=
 =?utf-8?B?NmVQcFpVdlJYbFNIZ2hWSVBBSTEwb0JxRDVCaWlma0JrMWFuMzZkRmlub2tX?=
 =?utf-8?B?aHVTNnlucCt5cHV1Z0pZYy9oK0dTMWMwT1RvM1EzV0hCem81bTQyd2FXRWZh?=
 =?utf-8?B?WlhZaWtReEYwVkswdjFsRW9ZUUxrYVhCYjVHQ3ZiNGhtalM2S1FRU1RDVzFy?=
 =?utf-8?B?NWtWSFhBYkJkTXZOUWNDWDdKdEZFM0dDUFJyWlNMSHhmbjVhVWEwWXBxeEJ4?=
 =?utf-8?B?VUJSc0Q3dTI1NUo3TFZpcDFqK2tEbURDQm0vRStnWlczd2pBZ1dtN2tGb0hU?=
 =?utf-8?B?U1VlRTkxWkxLSlFzeGhLZmI2dHZ3RkZZSEE1VkNZdFE3clpYRm5WcTB6RTMz?=
 =?utf-8?B?WWlDOFp3WGd1Sk5ObjVndmI0Q1NDMUxSckZnWnRsMWErNGc2NWR2enBLSUc2?=
 =?utf-8?B?V3Y3Z3lndE01Y0dWanJ2dW05VmFoWmQvdTJZbmd4WmdCUXk2Z3UwYzA2Q2NH?=
 =?utf-8?B?R3V5Y2o2eVRTZW12RURtdDhUN1JvNXNqMStmdUE1NXdSNHJGUEl1dzdiZElI?=
 =?utf-8?B?bENoRmFJU0hSZVdGM2pMOGV5Tm1QekZ0YXAzTjJOeXRkeitmSTdGeUxORlNq?=
 =?utf-8?B?dWY3enpRSldSeUdXanp2MU05eXBrcW5NSmxLYkNIVmZXR1hndU9yQTJnbC9a?=
 =?utf-8?B?aWpST3NiLzZ4SjhhZmhaYTNFSndCR3NHTWxJcE1GclZvb2taWFdCeENkT0lG?=
 =?utf-8?B?ZDFOT29QNHljRTZNbW5rYTV3bE9ibzEzd2JOaDFXeFVjZkFCQ1NlM1VhR1Yz?=
 =?utf-8?B?TWpRTlc5S0Q4dkVLQzJmQlpNOE9CS0FHKzNySEJ0bWl6WDYvajVDUDhCNmVx?=
 =?utf-8?B?SWNDK2x5QTNBY29QRG5raURQaXI2K3ZJd214TjdJNGRhaGM4c0FNWWhuUkFy?=
 =?utf-8?B?TFZmaG83eFc4VkhLQVdJOVZsOTFRSEVmYy92SGNFaXJFT1NpeGRBUDRKL2M3?=
 =?utf-8?B?akYvSzZOZDg4NHhNYnVFVDJBS3VmclFVdGtUUjZqQVVqaStlSHVKVHE0OGd2?=
 =?utf-8?B?ODNIM1BBVVE2eGlKRGdaMEpJZXkxRlBrZEdRMzlWQzBLYjEvMHNHYm9IWUxp?=
 =?utf-8?B?aG0xL0hZRFI5QTAzSG1wcjd5VFJUaXFLQ0VMN1lHNkt2ZE1sWXZ3ZXVmdG1j?=
 =?utf-8?B?Mjh1UFR2M1ZhRjI1bElLb1BVYVh3ZXk2QUdPQ1h2TnYzQ0JMemgrYndadzhL?=
 =?utf-8?B?UjlqL25KaFlIVnArSkhTY3BEbmREM0h1M3BiL0FrYTMrYVFKWUtjUC9oeFVl?=
 =?utf-8?B?SlF0Q2NiVFd3cGdNeTEwV1doTWFvN3labmY1WnV2MmcrWFQxK1U3Q0grTkkx?=
 =?utf-8?B?RmxXaFVZaUMxZVI2c0RGMndUZDFHbVM2ejhDbzltVGNMbGN4R0p5UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jD2RQchPTJIiNKATkEPXUXgg1dUesDKennRm+r5GlW4+ymNKNoy4Hy+gdezn0TjZxut7limHgVwem8X6fk9kWvwva6jMPC4BjFXgBBkTDUuDRshz7qvXXFBzvA+Iu4wqSrG47ETU+EdLteG3z9lSUo4L1ud2GgPBLU5uH4pxP4ky6sEWstEEgF8HNKUntAxwF0kjRhKqz0f+Vve8yxuDRtWFK2G8YF4Ktkd9EM1j4aK0fs2J8LK/CCbYEIr9Bp8lANV2Xx9Hv33pfsbLMgLnC5qsri1LLDZmU14KElZ6zl4XtM7c8K6LEKAiFk90JJ8f2EJeutegutFd13D9JLxTyw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 769ac3b3-08f5-4436-3ba8-08deb55ae283
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 03:58:28.4813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JGeUuFSACa74/e18PJGLrEHMPkVzqVBuaxUDmMcPNvelRu9vmw6NV6DT4PYBwayrzKoBMBsKuDFYtSEinGXlHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7581
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B6074577268
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDEvMzFdIGRybS9pOTE1L2J1Zl90cmFuczogYWxpZ24geGUz
cGxwZCB3aXRoIFZTL1BFLU8NCj4gbGF5b3V0DQo+IA0KPiBBbGlnbiBzdHJ1Y3QgeGUzcGxwZF9s
dF9waHlfYnVmX3RyYW5zIHRvIG1hdGNoIGxheW91dCBmb3VuZCBpbiBWc3dpbmcgLw0KPiBQcmVl
bXBoYXNpcyBPdmVycmlkZSB0YWJsZXMuDQo+IA0KPiBNb3ZlIHR4c3dpbmcgJiB0eHN3aW5nX2xl
dmVsIHRvIHRoZSBlbmQgb2YgdGhlIHN0cnVjdC4gS2VlcCBvcmRlciBiZXR3ZWVuDQo+IHR4c3dp
bmcgJiB0eHN3aW5nX2xldmVsIGNvbHVtbnMgaW4geGUzcGxwZF9sdF8qIHRhYmxlcy4NCj4gDQo+
IE1vdmUgcG9zdF9jdXJzb3IgZnJvbSB0aGlyZCBmaWVsZCB0byBzZWNvbmQuDQo+IA0KPiB2Mi0+
djMNCj4gLSBmaXggcmViYXNlJ3MgY29uZmxpY3QNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
xYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KDQpMR1RNLA0KUmV2aWV3ZWQt
Ynk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jICAgIHwgNzIgKysrKysr
KysrLS0tLS0tLS0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5oICAgIHwgIDYgKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMzkg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiBpbmRleCA0Y2QxZTRkNzZjN2FmLi45MDg1Nzdi
MDRhMTRlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaV9idWZfdHJhbnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaV9idWZfdHJhbnMuYw0KPiBAQCAtMTExOCw1MCArMTExOCw1MCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMNCj4gbXRsX2MyMF90cmFuc191aGJyID0gew0K
PiANCj4gIC8qIERQMS40ICovDQo+ICBzdGF0aWMgY29uc3QgdW5pb24gaW50ZWxfZGRpX2J1Zl90
cmFuc19lbnRyeSBfeGUzcGxwZF9sdF90cmFuc19kcDE0W10gPSB7DQo+IC0JeyAubHQgPSB7IDEs
IDAsIDAsIDIxLCAwICB9IH0sDQo+IC0JeyAubHQgPSB7IDEsIDEsIDAsIDI0LCAzICB9IH0sDQo+
IC0JeyAubHQgPSB7IDEsIDIsIDAsIDI4LCA3ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDMsIDAs
IDM1LCAxMyB9IH0sDQo+IC0JeyAubHQgPSB7IDEsIDEsIDAsIDI3LCAwICB9IH0sDQo+IC0JeyAu
bHQgPSB7IDEsIDIsIDAsIDMxLCA1ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDMsIDAsIDM3LCAx
MSB9IH0sDQo+IC0JeyAubHQgPSB7IDEsIDIsIDAsIDM1LCAwICB9IH0sDQo+IC0JeyAubHQgPSB7
IDAsIDMsIDAsIDQxLCA3ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDMsIDAsIDQ4LCAwICB9IH0s
DQo+ICsJeyAubHQgPSB7IDIxLCAwLCAgMCwgMSwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDI0LCAw
LCAgMywgMSwgMSB9IH0sDQo+ICsJeyAubHQgPSB7IDI4LCAwLCAgNywgMSwgMiB9IH0sDQo+ICsJ
eyAubHQgPSB7IDM1LCAwLCAxMywgMCwgMyB9IH0sDQo+ICsJeyAubHQgPSB7IDI3LCAwLCAgMCwg
MSwgMSB9IH0sDQo+ICsJeyAubHQgPSB7IDMxLCAwLCAgNSwgMSwgMiB9IH0sDQo+ICsJeyAubHQg
PSB7IDM3LCAwLCAxMSwgMCwgMyB9IH0sDQo+ICsJeyAubHQgPSB7IDM1LCAwLCAgMCwgMSwgMiB9
IH0sDQo+ICsJeyAubHQgPSB7IDQxLCAwLCAgNywgMCwgMyB9IH0sDQo+ICsJeyAubHQgPSB7IDQ4
LCAwLCAgMCwgMCwgMyB9IH0sDQo+ICB9Ow0KPiANCj4gIC8qIERQMi4xICovDQo+ICBzdGF0aWMg
Y29uc3QgdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSBfeGUzcGxwZF9sdF90cmFuc191
aGJyW10gPSB7DQo+IC0JeyAubHQgPSB7IDAsIDAsIDAsIDQ4LCAwICB9IH0sDQo+IC0JeyAubHQg
PSB7IDAsIDAsIDAsIDQzLCA1ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDAsIDQwLCA4ICB9
IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDAsIDM3LCAxMSB9IH0sDQo+IC0JeyAubHQgPSB7IDAs
IDAsIDAsIDMzLCAxNSB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDIsIDQ2LCAwICB9IH0sDQo+
IC0JeyAubHQgPSB7IDAsIDAsIDIsIDQyLCA0ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDIs
IDM4LCA4ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDIsIDM1LCAxMSB9IH0sDQo+IC0JeyAu
bHQgPSB7IDAsIDAsIDIsIDMzLCAxMyB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDQsIDQ0LCAw
ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDQsIDQwLCA0ICB9IH0sDQo+IC0JeyAubHQgPSB7
IDAsIDAsIDQsIDM3LCA3ICB9IH0sDQo+IC0JeyAubHQgPSB7IDAsIDAsIDQsIDMzLCAxMSB9IH0s
DQo+IC0JeyAubHQgPSB7IDAsIDAsIDgsIDQwLCAwICB9IH0sDQo+IC0JeyAubHQgPSB7IDEsIDAs
IDIsIDI2LCAyICB9IH0sDQo+ICsJeyAubHQgPSB7IDQ4LCAwLCAgMCwgMCwgMCB9IH0sDQo+ICsJ
eyAubHQgPSB7IDQzLCAwLCAgNSwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDQwLCAwLCAgOCwg
MCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDM3LCAwLCAxMSwgMCwgMCB9IH0sDQo+ICsJeyAubHQg
PSB7IDMzLCAwLCAxNSwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDQ2LCAyLCAgMCwgMCwgMCB9
IH0sDQo+ICsJeyAubHQgPSB7IDQyLCAyLCAgNCwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDM4
LCAyLCAgOCwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDM1LCAyLCAxMSwgMCwgMCB9IH0sDQo+
ICsJeyAubHQgPSB7IDMzLCAyLCAxMywgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDQ0LCA0LCAg
MCwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDQwLCA0LCAgNCwgMCwgMCB9IH0sDQo+ICsJeyAu
bHQgPSB7IDM3LCA0LCAgNywgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7IDMzLCA0LCAxMSwgMCwg
MCB9IH0sDQo+ICsJeyAubHQgPSB7IDQwLCA4LCAgMCwgMCwgMCB9IH0sDQo+ICsJeyAubHQgPSB7
IDI2LCAyLCAgMiwgMSwgMCB9IH0sDQo+ICB9Ow0KPiANCj4gIC8qIGVEcCAqLw0KPiAgc3RhdGlj
IGNvbnN0IHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgX3hlM3BscGRfbHRfdHJhbnNf
ZWRwW10gPSB7DQo+IC0JeyAubHQgPSB7IDEsIDAsIDAsIDEyLCAwIH0gfSwNCj4gLQl7IC5sdCA9
IHsgMSwgMSwgMCwgMTMsIDEgfSB9LA0KPiAtCXsgLmx0ID0geyAxLCAyLCAwLCAxNSwgMyB9IH0s
DQo+IC0JeyAubHQgPSB7IDEsIDMsIDAsIDE5LCA3IH0gfSwNCj4gLQl7IC5sdCA9IHsgMSwgMSwg
MCwgMTQsIDAgfSB9LA0KPiAtCXsgLmx0ID0geyAxLCAyLCAwLCAxNiwgMiB9IH0sDQo+IC0JeyAu
bHQgPSB7IDEsIDMsIDAsIDIxLCA1IH0gfSwNCj4gLQl7IC5sdCA9IHsgMSwgMiwgMCwgMTgsIDAg
fSB9LA0KPiAtCXsgLmx0ID0geyAxLCAzLCAwLCAyMiwgNCB9IH0sDQo+IC0JeyAubHQgPSB7IDEs
IDMsIDAsIDI2LCAwIH0gfSwNCj4gKwl7IC5sdCA9IHsgMTIsIDAsIDAsIDEsIDAgfSB9LA0KPiAr
CXsgLmx0ID0geyAxMywgMCwgMSwgMSwgMSB9IH0sDQo+ICsJeyAubHQgPSB7IDE1LCAwLCAzLCAx
LCAyIH0gfSwNCj4gKwl7IC5sdCA9IHsgMTksIDAsIDcsIDEsIDMgfSB9LA0KPiArCXsgLmx0ID0g
eyAxNCwgMCwgMCwgMSwgMSB9IH0sDQo+ICsJeyAubHQgPSB7IDE2LCAwLCAyLCAxLCAyIH0gfSwN
Cj4gKwl7IC5sdCA9IHsgMjEsIDAsIDUsIDEsIDMgfSB9LA0KPiArCXsgLmx0ID0geyAxOCwgMCwg
MCwgMSwgMiB9IH0sDQo+ICsJeyAubHQgPSB7IDIyLCAwLCA0LCAxLCAzIH0gfSwNCj4gKwl7IC5s
dCA9IHsgMjYsIDAsIDAsIDEsIDMgfSB9LA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RkaV9idWZfdHJhbnMgeGUzcGxwZF9sdF90cmFuc19kcDE0ID0geyBkaWZmIC0t
Z2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5z
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMu
aA0KPiBpbmRleCA5Njk4Njk3ZjM5MTc3Li5hYzlhY2RlYzZkMjk4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaA0KPiBA
QCAtNTEsMTEgKzUxLDExIEBAIHN0cnVjdCBkZzJfc25wc19waHlfYnVmX3RyYW5zIHsgIH07DQo+
IA0KPiAgc3RydWN0IHhlM3BscGRfbHRfcGh5X2J1Zl90cmFucyB7DQo+IC0JdTggdHhzd2luZzsN
Cj4gLQl1OCB0eHN3aW5nX2xldmVsOw0KPiAtCXU4IHByZV9jdXJzb3I7DQo+ICAJdTggbWFpbl9j
dXJzb3I7DQo+ICsJdTggcHJlX2N1cnNvcjsNCj4gIAl1OCBwb3N0X2N1cnNvcjsNCj4gKwl1OCB0
eHN3aW5nOw0KPiArCXU4IHR4c3dpbmdfbGV2ZWw7DQo+ICB9Ow0KPiANCj4gIHVuaW9uIGludGVs
X2RkaV9idWZfdHJhbnNfZW50cnkgew0KPiAtLQ0KPiAyLjQ1LjINCg0K
