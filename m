Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251A89090CD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B77210EDE5;
	Fri, 14 Jun 2024 16:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9zVHQNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170A210EDE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718384149; x=1749920149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QYXxc62g86gaOMusAspbh9BUIHzi9j70OpgC//VOb5c=;
 b=U9zVHQNbBJ9t3yECW+yyZjAFWx5loqfPYNNKQVgib2wgtZRbP2p5ksqV
 PvHJBZ6pn/8ycJwtcETFyxlhdr7guvRBMJyhpJja5Jlu13DLnsIjDnuux
 zFedbZ0QocSLUYdX3/SCJSCGI4JrLONODcer9iqrDRCeJJ0CdEddsnSSU
 GcJGL1aTpzObThwMjRWuHt+XDp5B0yTlJb172aqHz4aW5rgWti7mCxaQ3
 Zwyyw0XhHms9GKl/U4m9kT/Gv6xpFeShLGih7nT0gVJzOzlDlYXi8SEjY
 zmZD/LmqhNhLgMQZielB8M+UIdJRjaE2GkS5INdycmZttXUoUekL36OOb w==;
X-CSE-ConnectionGUID: kur59SnDTv+koN2e53+3pg==
X-CSE-MsgGUID: hifxGjpnSgWvF/AuKGB85A==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="19133910"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="19133910"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:55:48 -0700
X-CSE-ConnectionGUID: Jcb19Cg+QXOBhsQE1K7lWQ==
X-CSE-MsgGUID: 6GfGv1IgR9u706ajFlfp8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="40700096"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:55:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:55:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:55:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:55:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PeRmpwY27WamOflawO5g/8B1NOKzaOqqBnWtc1NL2qo5KVZF8t630t1XaU/Lo/dBxmFwpd4HAPLgh6rL/MCdMMlOT1TK3Yr28P6itCkHR09RYcQYblwNeuYjK4MUD60CYNbV3pb8G+qU2FephtL3XTtEO5CJf27Oe7bgu4e/bUkI60p6dykcdobr3QsHrC4EjJ/AMkMR4AEO9wVjjVNNDvp24w43jprDACyAe6gdX6MQ7cH9ggQwxwP5qKIEA/Cn1XNcp+TekuMeIKrSNjeNZTgLiQBKbJA55n7PEAYHkZwXkI5NqclojjyCWz56kRLOv0/pV4gkq97+5xokIOut9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QYXxc62g86gaOMusAspbh9BUIHzi9j70OpgC//VOb5c=;
 b=O3YMWqoZ/h5ONy6Jli7R7Ew2U8rAtoLBhUNN0UGM0hUX1Deh+i9+tdNl4aT46AOaeTJ4oSElhoRKIP4VGKjof36+B6V2r17wKFI6ZdZ/WMJFff3qFPxXbT/EDYhYYrijC2a8u521pSB4g7LzXwYGLwoWE5r0hXi9GOOhjBEvHcO61Yqnz4biVjPWKzOOK0SyZ+MQa62G1jXly0PGmK6ywA9qdU2o6Jkl9V6OTh6A7eTqVRRbzqE16p/3KJlHTvPlLOBOVD0us4VB9ZQnuHQR42aTmhJu2fLqn78zKzakt+Lw7W+7BcH5wLqLnnNuSw246Sa6QNUmeAEX+EEpw+w/CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24; Fri, 14 Jun
 2024 16:55:45 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:55:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 06/20] drm/i915/psr: Disable PSR2 SU Region Early
 Transport if psr_enable is set
Thread-Topic: [PATCH v8 06/20] drm/i915/psr: Disable PSR2 SU Region Early
 Transport if psr_enable is set
Thread-Index: AQHavXS1kspk7+AFTE+RvbLhQfBgQrHHfFYw
Date: Fri, 14 Jun 2024 16:55:45 +0000
Message-ID: <PH7PR11MB59817D3EF50E17DD12CE34ADF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-7-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4818:EE_
x-ms-office365-filtering-correlation-id: 13acba6f-1452-433c-12af-08dc8c92d55d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?YmF5bkRlUnltWjdiZzltK1hwVUI1WFRPTVBoaFc5WlV1UnRxVUpHYUpqdHpD?=
 =?utf-8?B?QkJKNzFzZEI4Mk9kWC9Ia1NEN2JiMVUwc00zeWpQZzRZU3lZMUQ2bVpaN1VO?=
 =?utf-8?B?dmdWb1hpdzZ1amdha3g2SHh0M0RRWVJyVU9jOGVZMjEveUNOdUFpOGlvUndU?=
 =?utf-8?B?VUVycDBEajc3ekp5VXlZbjY4Tlp0UEZnRlYyZmdRRk1PMFdrbXRKa2hvY3BO?=
 =?utf-8?B?amJVTWNrNVFpWVREd2w5dndVK0I0MGFCWjFueHY0VjJWNEp6bkZjTUU1cFR0?=
 =?utf-8?B?SlBXN3hld0h0WWsxQnlDeFBkR3U2aWxnOG5SZzU1ekNFTksvbU5VVlhqNmRO?=
 =?utf-8?B?bWZoK3RVaXpseW5mUHFmZjJZYW45SW1hSmNyZmFKbHB6L2t1bUMvaC9MZkV3?=
 =?utf-8?B?SUg1V3hzRXNKUFpoVHRJTWY4VnhQaTNMbUIxdkg3WnIzbURoa3FXTjV3bEZv?=
 =?utf-8?B?OEdkS1NyYjAxWGdmWkVxNXpNaHlORUNMckthaSs2Vk1wREVCWHpPMldydlp0?=
 =?utf-8?B?azA5NmRhMUt6NFdVa2FsTUI2V2JjSGlWVTlXOWJYS1FMUkh6N1NiWVhYYVlP?=
 =?utf-8?B?SC9WUVJoMU1UcGF4aVRldnRkRHFlMklKVGdUMVlkdGVqa1E5OFNnMjJDVE5t?=
 =?utf-8?B?aXBtZ2ZrV3d5Zk5CQ1FzKy9hcmlkaU5VbXBVM0kwM0MveWNLcVZaRG1ETUw3?=
 =?utf-8?B?RWdOaEo4cE13RnJnVUtQNDZTNzZzTkxQYzJ1M29SSnVtTkttZ2sxZEFLRFh6?=
 =?utf-8?B?dXJBVDlCUUFwVEtOSkVTdHhXTFpDTlh2K3dsS1lpeE12R2RXbVlxSFZMRGwv?=
 =?utf-8?B?K3hoTERjcXVTQWxtNHUvMXRlUHJyMVl5S1Roc3d5cnVsVDc5YllCa0VDdE5h?=
 =?utf-8?B?UU5XME9HVldNZVA5a2ZZVng5VkhFNStrYnVaTzcrNVpiUGhwc1ZPZnFBQyt2?=
 =?utf-8?B?NFN3c3h6MjR1cm54YmlRUVFsbVQwUmxrdEplL0s1MkY4NUpQdHM0OWJYblpm?=
 =?utf-8?B?YWxmRE1IVC9lUE1mQk80NjYvUkk5K2d3NFVpTU5qY0hwMzFXTnkwN3VyNWpK?=
 =?utf-8?B?ZEl1bzVKTXhRalRvMjMwM0hhUkdYYnhYSEtaMjVrdXJYNzJUajJFY0grRU5N?=
 =?utf-8?B?QklEQkhhR1A1cUdjVUlwdlF2MERIMjcyRzFzSnJlRnpTazkyRnE0ZitlYXBN?=
 =?utf-8?B?QWxueW1OR0tIOEtpK1dTaStxNitmMHk5c3RaTmc1cjdYbzJubmFjdVZ6TXhR?=
 =?utf-8?B?N0FxTERwMDdOdURvdDNUbXdMNEJzc3U3YTdudnNTMko2TzZLamVaL3hJM3JM?=
 =?utf-8?B?Q1pIaExKTTlHOUU4NVBobW9rWFJoZFJCMWRWb0Nia2FZei9Ia0s1VVk4WHdV?=
 =?utf-8?B?SDdjNmFtSGFtdUZIRTducE9vVStSd21aRG55MDBkTzhkU01oVXBKTC9sSEpR?=
 =?utf-8?B?SUI2VCt1ZW00Skg5aVk0U2JoV2x1VEd6SG0yUDdzUS9RV1Fyd2J5ZmhSQlkx?=
 =?utf-8?B?Tk1SellnSzU4em90VlNMR25Lenk2VW5uMG9Ea1duOUQ2dEVWZ3o0WFpOUDRO?=
 =?utf-8?B?ei8xMmRTc2Y4S0dYQUh5RFFWMjVwUFVmV0s3UEhTWFZCdFF3bVVtQUM1WE5K?=
 =?utf-8?B?UldJTUt2SG9VWUxzVnlqRlpiZnBiNEo0dmc1Z0hWUmlta0NLZ3lsSHM5WVNp?=
 =?utf-8?B?MUtEaUt4UGRkZzA3YUF4cnBiLy9PYmtHYjdKQnpWTWV1d2MwaHdPTGtTN0d2?=
 =?utf-8?B?VmZVbXRmT1lWaUsvazYvL25vdHo1QzRsN2VIMGZaRmUxbStUWThwQm45eStK?=
 =?utf-8?Q?Fighx+Lg7ja/QwFc8KeeNDVc+F1lmCU7wIJXs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkZVK3doampYYTBtRjREc2ZYV1JJaS9MWWZaWWRDOU56TVVJNU9UVWs0RXpq?=
 =?utf-8?B?VmlJdlhmRERzUTZaNXk0Z3BEVGpMTy9pbkhqeDBSOHhrcmtzcE9BeEpRZnht?=
 =?utf-8?B?YmZaUmYwczJ3RFBqbHdDK0Y4NHl4dUVVdXlXbkJ0RjhwY29PYUdMZGxzQUZx?=
 =?utf-8?B?TnVpdUdLMmRJUTlvWnRubHErem9qTUx1SjNqQ1BqSERBb1U0WkY2NXJrMXJt?=
 =?utf-8?B?azh1YTNsWHdHeGpWM3FYRytXV2NjMGRZdlc4VW53VUY1TXE0di8veGtCNW5T?=
 =?utf-8?B?MmNRNDJxNndsditYR3ZEbS9wUEg3TFp6bjhtMmVXRnZmMVhVTWRTcVpzOHJY?=
 =?utf-8?B?dW4zbndudk1DTm01bmxzNklUQUNWbEVMSFpHWXFGSnlKRklLR0ZNandDdlNS?=
 =?utf-8?B?RGo1VWppZHRJYjA3cmR4VHJjREVIOEJOTzlIMHZlU0ZiQUwvdXlocGxTZ0J3?=
 =?utf-8?B?b0lUVHVuSU9Wd3VQR0JXNXVMaFZrKzFOaWUxWis3dHlwZUdZZzVtY2xvdHlY?=
 =?utf-8?B?ZEpvMEFpelNKckNvYzRTRFBuZXJuY3JWMUJZY0ZGdkRTVlhBQWx5bysycVV6?=
 =?utf-8?B?K2pWVUpvWDhxY01PbUtjcFczVmxiM01SbzUzRXp2ZkNBckQybTBVbm5JK2tY?=
 =?utf-8?B?VUZxQmJBVmdUOUlWZ2lQVnhmV2VNYzlEemh2T3RqRk4vTWhaWE1rYzQ3bGRC?=
 =?utf-8?B?RG5oZEIyWTU4QVl3Q0t3WmxGSEN0UTFaTzFZZUMrd3BWWktYL244S1VtKzly?=
 =?utf-8?B?MHZHSkgzSXZMdU1XbHdZMUVBUmdiRUhwa1ZuWVgwVWxSNi93YkNOQXhHZ1U4?=
 =?utf-8?B?OGx1TlpMcjNXY3RseUp4STBjSHdTRVdTL21MazQ0akxrN3pFK1FWYkJRSHFH?=
 =?utf-8?B?R2xTVXlhQVJlVitXeUkrNlgxTkQvNjJ3YnBaZlhXUW9TYnh4TDZnOGxuUm9F?=
 =?utf-8?B?TlJVNWZHSGp2UXRvZm1Tcjl3QzZWcjhmTUtzK0JnbnBVN2JMbXM0Q3RaT2Zw?=
 =?utf-8?B?TW1wQ0pkMS9GU3h2cVMrb2svenJ0STNydWZ2SExYRUNiendIMWE0VXVha2E5?=
 =?utf-8?B?UVJWL28rakwyajgwdDlSWU9ublZZUHdKYVArSlM0bVFYQ2lvVThyaFc0aVNF?=
 =?utf-8?B?a3JPcmUycTEySkNDQmU4YVJHNHV0cVkwU1F1WmNpL3c3K1RIaGdBdmxhMTdO?=
 =?utf-8?B?K0RONGh0T2swYjJBUXZvaVJqVmd6bmV0aktMaitWMGpJWUdwZitzblJFRjZR?=
 =?utf-8?B?eTVsOG03RFF6NFIxcEdieUVOWEoyQlM4TFZlblZDb1Q3RVVPb0trWkx4M3FP?=
 =?utf-8?B?VUVSY3dsK0I2VExrbDFpS1crZEFtY2dweHRqMy9QUkt0bHd1S3VZb2FlRjA5?=
 =?utf-8?B?ellHanJFSnJnVm5WOWtuNkxlckhEdGJqTndPL2NidkM1Z2diNVBQK2N4UnZr?=
 =?utf-8?B?QldCMzE3WE1lYWpBM25uNXh1VUVZRHk2RDRxdTNKUkcycHdVM2s4TXhtcFEy?=
 =?utf-8?B?Q1hmM3NPQURvWm81TERocHRVWmEzTWRnYm13TzlBaHBDSFpLakQ0eGU2YUJS?=
 =?utf-8?B?T1ExbTNWV2hQelI5UExGUUxlWFFhQktmbDl5MEl3SWVoZFpzMEptcHNJeWRX?=
 =?utf-8?B?Qk51VmlocktQYzdJMnFSRXF4Q2JNVXFUSXlpR1VMaTFQV3JuaDhqMjduOGVr?=
 =?utf-8?B?Z2dRMEN3NU41NUxPZjNUcTJ6dkhqWmpMYlRmZVFqaDJKK0NGS2xROEY1ZXZQ?=
 =?utf-8?B?bWd0R3BkSDkrVm9zRFlkb1g5LzJ3WVM2M0oyaXZoa1hYNnJ2L0psZGVNdk5E?=
 =?utf-8?B?Qy9VUS9nUWVCalVHOE0veVp6WXQ0c3dzci9LL05NdTQzYUxSd1dNTU91eWZ5?=
 =?utf-8?B?QkFraGsyeUJlejVnNnlkTy9TM3ZqT09DcUpTMWtRT0wxZ0F0dFZhUjFxbmMz?=
 =?utf-8?B?ZFF5L042cGh4YjhHODRrcWE4Z2YzRzE2bHo3b3dHQUQyRUp1bk1GYWRiMXFI?=
 =?utf-8?B?ZFV4RFRyY2UydVpHUXRORDhNQlJXRnZQQkY4Yi9qTXJGTmJXcmovVjVtTXpH?=
 =?utf-8?B?cWJpZnEzVVRtYy9yRE5uWGIvb3lHL1JTY1RQaWh0SHViQStib2RURVFtejNJ?=
 =?utf-8?Q?d5Zd6fGLcr293HY8zAVQlClcc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13acba6f-1452-433c-12af-08dc8c92d55d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:55:45.1919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sBXjqmxnK5eSN40Kpk/Grl5C7cer1HWHq7UCURl63Rxqf9GaOz/J/Cl3/Qdnct4QQHlYGu0PGsN3FMRpljznSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwNi8yMF0gZHJtL2k5MTUvcHNyOiBE
aXNhYmxlIFBTUjIgU1UgUmVnaW9uIEVhcmx5DQo+IFRyYW5zcG9ydCBpZiBwc3JfZW5hYmxlIGlz
IHNldA0KPiANCj4gQ3VycmVudGx5IFBTUjIgU1UgUmVnaW9uIEVhcmx5IFRyYW5zcG9ydCBpcyBl
bmFibGVkIGJ5IGRlZmF1bHQgb24gTHVuYXJsYWtlDQo+IGlmIHBhbmVsIHN1cHBvcnRzIGl0IGRl
c3BpdGUgcHNyX2VuYWJsZSB2YWx1ZS4gUHJldmVudCBTVSBSZWdpb24gRWFybHkNCj4gVHJhbnNw
b3J0IGlmIHBzcl9lbmFibGUgaXMgc2V0IHRvIHRoYW4gLTEgd2hpY2ggaXMgdGhlIGRlZmF1bHQu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgMTMgKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBpbmRleCAwZGY1NTc2NzZlMDguLjI3Y2YzMzBkMTNlMiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMzUsNiArMjM1
LDE2IEBAIHN0YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdp
b25fZXRfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0K
PiArDQo+ICsJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEpDQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+ICBzdGF0
aWMgYm9vbCBwYW5lbF9yZXBsYXlfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUo
aW50ZWxfZHApOyBAQCAtNjgzLDcNCj4gKzY5Myw4IEBAIHN0YXRpYyBib29sIHBzcjJfc3VfcmVn
aW9uX2V0X3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IGJvb2wgcGFuZWxfcmVw
bGF5DQo+IA0KPiAgCXJldHVybiBwYW5lbF9yZXBsYXkgPw0KPiAgCQlpbnRlbF9kcC0+cHJfZHBj
ZCAmDQo+IERQX1BBTkVMX1JFUExBWV9FQVJMWV9UUkFOU1BPUlRfU1VQUE9SVCA6DQo+IC0JCWlu
dGVsX2RwLT5wc3JfZHBjZFswXSA9PQ0KPiBEUF9QU1IyX1dJVEhfWV9DT09SRF9FVF9TVVBQT1JU
RUQ7DQo+ICsJCWludGVsX2RwLT5wc3JfZHBjZFswXSA9PQ0KPiBEUF9QU1IyX1dJVEhfWV9DT09S
RF9FVF9TVVBQT1JURUQgJiYNCj4gKwkJcHNyMl9zdV9yZWdpb25fZXRfZ2xvYmFsX2VuYWJsZWQo
aW50ZWxfZHApOw0KDQpIb3cgdG8gZW5hYmxlIGVhcmx5IHRyYW5zcG9ydCB3aXRoIHBzci9wc3Iy
PyBJcyBpdCBub3QgcG9zc2libGUgbm93L2Z1dHVyZT8NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0K
PiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIF9wYW5lbF9yZXBsYXlfZW5hYmxlX3Npbmsoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gLS0NCj4gMi4zNC4xDQoNCg==
