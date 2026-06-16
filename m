Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aD87L74EMWrFaQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:09:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B725A68D0B1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:09:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jezo15SW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405DF10E8B8;
	Tue, 16 Jun 2026 08:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFB210E8AD;
 Tue, 16 Jun 2026 08:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781597370; x=1813133370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pGZnILT1k5tKPbshLIPIifO1zgU0zGyxz531+4WO6Xs=;
 b=jezo15SWCoGJ97HCisRYGILGPYRs/VgsX1bbL5KCDyGiLqNvzwP6w/Lu
 upabI1cHH8ndxQ/Ua6ZGLDdESq5oA0Tl+AsFiuhQ7eoJFA9Eo2avPUYBn
 bu0te1Fxw5nEmNgdjyNXzyscaeWlfjyd4S1empZXwHW7OtHrQb60AfCbU
 ktCfl8iAbDDFJY197+2qpoX5gzGin8d2NBWfjcOfv3fxF6i3qirseguqO
 jz4d6GrlWtj0BL4S8C/mZM5LKQ31p9gSbVid6KAVcdh5Oat2R53RQFjrE
 /0VRNuTEsRfvsyQ9eip6eQwC3DMRZQ5rDtz00WO3TwURJx/h2sLoMZxPM A==;
X-CSE-ConnectionGUID: iQK1DQsnQQSQ4wyrTBCcmQ==
X-CSE-MsgGUID: ct/Ew5onSESExllce6CybA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="84919170"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="84919170"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:09:15 -0700
X-CSE-ConnectionGUID: Pl3p4sOGTwezGBjwu2SSRw==
X-CSE-MsgGUID: OaHmzzfiSKmGQNmfJLN/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="243538755"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:09:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:09:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:09:14 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:09:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EBLpm3a13N9l2R217nkfFAQhRQXUKn5XA2b8tPHhl8ojEkmGBNxGv19k/p3sWPybrIHz6sA7xX6nPu9yJCfWrhX3fEWGXycrn0NsErWv/EQTpFeelOoj7LO0BEZCfh8yFbNrVd9lrG0IV74QrLg+IIr2MIKAIVvfdrklzhnXjc+IOSZcRzOMNSlKvUAzGSoi63Q1AcyJSV+EUm25SwrQYy3v6EQunQeIMO3GXYt4x0sGwuujKiLtsGypBRC72TN9GvDknpcBLJ7vQS2e9cWAbGCP2vMu/3UGeVGCMxsadt3OegI8XEiSbTlRE0Juh/st3n7d/Ofzzu6QDn8xHLzKGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvfeWJOApO7YlMo3CXKLq8X23Eu8TsZDEVCIKJlbLYw=;
 b=joj+3/5DOvNGBBLi2jGvVP+GZl7w01SkcpGEsqcPRSn5u/HQtMBqBvg2Bf+FUzd26Z2ILCQ7AcsaeshZUs0lMJgIHXIOano5r6BDwBdNJDg19ooybeYnqzqmlhtVq9HgxaPx0Xo8fITCLO2N7Tis4gIwb3gnnYfcrr9nNFqnzLnvjdeBlx6gXrYqOcgse/nCvHsnt7w6o6z8G0u8pmKRrFtvuZwv0U6M+nCW8NY5PBtdTvKT8mySQJDFwvPJ3HkQlqHsdEs8UA/lJkUJ8iEy2z0j8cjFqJLFPxvG3lEAG7ZxxwBomhQoc2dFJWgLZCVv+D+cYGa9PuXVvpWJ+pRMmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:09:11 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:09:11 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 08/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder in LRR path
Thread-Topic: [PATCH v9 08/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder in LRR path
Thread-Index: AQHc/QaeKksHKLMfI0eKd97zqM3nhLZA1I3A
Date: Tue, 16 Jun 2026 08:09:11 +0000
Message-ID: <DM4PR11MB6360068EEA27864C1040027BF4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-9-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-9-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: d2760f56-92af-4faa-697f-08decb7e8c6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: wS2Q+IEARpHbmCbTMly0eA0tbGC3/i7nAWVjIfTFKJqmo01n0UawF87JfzDD7VxEBKvxPlGNdjbAv07xJEIaUuoz+T8klefgU62NgB/aT4nfeeoLXEjIcXlr8K6yzdPKzIBsr9eLMHIwuiXo4j7l9iD3luvh3L/qr9C1wLkDFFNelUH2wBYpzMZ2KLIS8S03KOyyP0rnIgjTw+CyGSDGGLqZ/NUsxZTxtoXK59FjCIPx9Uv1kwBYDcI+X3nkPhnSCfV8asrrZeaOd6uK8llRHMjKgrwOTcDSOj6gi1z1Ov/6rkyD86TfNof4M3OZaMpin+K+q96+gonBGFaapCsp4C+8oIVFRKs+m9xp7rQ6ngwG7w6sk9fcXIm/ttp+bYyA8urccgBqLK6K2j7xv2YNK6exPeA/MH8fkOz79ApQ4omMAW4YMzA2YRevq0OZN80/Ct/HVaStoT+3RXjyaTZGYI3ykjE586J0+vTUHJu+O4qFyryYzRpu0KOfRve+qhAsRTaQnt96wjp+o15J1HdJFAj5JZyhalE7WttfvztjrR71pMtcbndkjTMk/TTUC8mrmml3MjgN2r6MeUkcsonieufatYTN+mC7lQnYhUDvHSgmA3oxicx3RB1SU3zLuCrNW4/7xGwXE06I6LdeBLlW3TgAodWfvtn4P1sBzGL3hdaLM7edkyv6vMNu5F0Xuaq7ZMUWPB8SOO6BD7nXA8nd3dLVrCUP0qwNu4R9v11VuXpW0QpKhmnNgfA66KomwWKF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FXj1H8HrJCpjIdUiRA10gP+mfFjTl+zOuQTuuj3+mZz+VNMsvmaNHZrTs/8p?=
 =?us-ascii?Q?WybZ9JxycQyPucjqBaJiTZf7e4RO4BIWg03uVTvhgKLruGNPyQG5Ovu+YHzu?=
 =?us-ascii?Q?AisU69FsPfh93i6GBZSL+5poKgp3zR5/H8B6v7onTLm/IMvgVRdlq5pejtyJ?=
 =?us-ascii?Q?NEWUrWAOue45QDn/kPxxOUUXINkkzht54xfOxuS8zlQdQ50S158FnF39KUnX?=
 =?us-ascii?Q?SEg4DALPZ/m9Al/uExrlTnktAmrAnjhHmL4JAFddn2iEcxyem+VORg1d/54Y?=
 =?us-ascii?Q?NBYsCJ6emk58IvH7S9Tmoqs/iUDcf83cfsG5FMdM1h3rzNBWeibH8uo7TPCw?=
 =?us-ascii?Q?hK+vp2CF+Xm48wgOIMaoj1yEiYvw+ZyTCTt8+LU1LI31BzaTl7SvHZukQKU5?=
 =?us-ascii?Q?FeDjK30QvcIWn7xfqff+Kpt67UWbCLapGnq/nEjnR9fv4Cuvlq2QCBXbeKc/?=
 =?us-ascii?Q?D2TV7jg3xpdvFpM3jzv0pXhnXCi2IGlA4WZsurMYU0t99zk9MNS8nzRQLEsW?=
 =?us-ascii?Q?T51XrAXL0MpsBb/7Kq5hWJGYdByvJX5KNt5HZBoo1EBdQlm6z6jPyizQrDve?=
 =?us-ascii?Q?I3D0mENjT1kHhgBv83fU0wenPJ5ZbLNEzf/ijRu/QwoB9bDHbcrRMwYwPtc4?=
 =?us-ascii?Q?eblqzeNvHo0QtntNibdUkaJN4f0aQlMe5ic+PP0d9CUuA9yo4cE0xc+a1sH7?=
 =?us-ascii?Q?tpzy8AaLJyS39mfYvpnpCFMIGdewN8s9ABpuWWMwm+daR9YB6bd9Bmqa3ixu?=
 =?us-ascii?Q?rV9GVHEwwUZzQ7mSqy0g7/Pn+LXqfSwVGQFPgojh3MTiJDuooHT5t+Q+y4Tf?=
 =?us-ascii?Q?HBtFhkR7Y660Dz4+XyW0TFovTtrCi/2Z8980dVocbHA/4V/0sWK1N6OCAxsq?=
 =?us-ascii?Q?+jYPI7iZ8XxNqc8JyEVlM1Cg7cGadH0A33U8cdOE4i6r7P9RReRIASqYe7Cg?=
 =?us-ascii?Q?QjssVVst+X3G4KDCl9g3VdPCjch5NNT+KvL+mD6Hzbbwd11w4lubMMUTUVP2?=
 =?us-ascii?Q?KxMucpcYxnfdroHp/U7T4Jk77W4uD1vr+XFcHqZVpmY2s+QFqxErJZnr43CU?=
 =?us-ascii?Q?3yhRSOJmlYxzlzBq/iZVA1aSwjw61Zs2aip1jQric7QVenMn4NFo2sSPIYpb?=
 =?us-ascii?Q?ZQ4CGckfZO18dbX3UFiXVwm0ioHCEdOBIoWaBIYJmpacd27/Wx6Gd9AD/AkL?=
 =?us-ascii?Q?2ytNfOAjrNAu9mlc1fah45P4wMpnsZGbpJ7bVVg5fSU1DZNFV5BQUFnlHXbi?=
 =?us-ascii?Q?vLbxKjsqjCxbSp+mSGS8mXf9PAawOMhPLKFHKna/87EIrwwgbT75cb8bTIww?=
 =?us-ascii?Q?9wBOBB6LA5bHjs9/MujLR3fBZSzFvcKkDMMNF2hsVa/P5fwWMhg0GTkkFis2?=
 =?us-ascii?Q?oGuuyeyQuvqVaOmMQ5fox2SGpCf39RY5kefv6obPHjVFZ/dLszTMLPYzhQ0i?=
 =?us-ascii?Q?2eu9LkQqnbCkCSFolQur/JGUAHX61SS+BYbsM25A9okAKmZq7RiZe5C1Snjw?=
 =?us-ascii?Q?onazjoEnC4FzJb9YXjRBNEki4F/Ic6xiwCUPyV0YaTKNgSLjMtodmV8BZTCW?=
 =?us-ascii?Q?E1l+wrQhWrwm6FRx27XftvU/mjVrP/KqNvTliwNDaExcTz8K8+n2++hzLdJo?=
 =?us-ascii?Q?RFzMrdtswDepwHTCOdP3INoERapq1XffDhwq2GwZWBPpc8vVgaz54A+im757?=
 =?us-ascii?Q?y54nt5FHgy5R1tJSUMWT98MAriE9NPUWGYVtPCvmo8qd6yeo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L+rsPuJBmafxSTeGKViJFAsHHE+zAaCYFzcnb7Ci9EvU15kRsA7OTqFrA9ZEE+xf3JPUTKethbIrs/tIikOeA0WHWTaPMWF7Eyi2Dc431vWR7ZVXbqks2kFUNjKooOzMhS90GXE0c6pb3c87QlhQ6dKEO33FnQYRlhGOA48/JHnDWI2Wm+Dm+20UKwJkZvUFA3OszWGJmFvhQHU3hz+4d0mMz/2YPnILHlVqX9LruwvkKKXGCbpmQUYFBZ+lWuo1oKOFaQNsRLmEUUiW7PW1uxtuzJh3rLbYpbiXc85iIc8xqku04TWW8UxnMNWuNha1T5KcoIOqrB1O1Mml1IsKbw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2760f56-92af-4faa-697f-08decb7e8c6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 08:09:11.5485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sbpZT3kaQPYareaZGdnuu1POiCYCQy7ykcgAq+l4tsBtP9qQDxOS/ec2Ws07r0nwZCr5spdd65x6ZDjf3wnx3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B725A68D0B1



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:33 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 08/22] drm/i915/display: Rename cpu_transcoder paramet=
er
> to transcoder in LRR path
>=20
> intel_set_transcoder_timings_lrr() now takes the target transcoder as an =
explicit
> argument rather than implicitly using crtc_state->cpu_transcoder, so the
> parameter name 'cpu_transcoder' is misleading. Rename it to plain 'transc=
oder' to
> reflect that any transcoder may be programmed.
>=20
> No functional change.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 049038742517..edb9acb1da5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2778,13 +2778,13 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta  }
>=20
>  static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state,
> -					     enum transcoder cpu_transcoder)
> +					     enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>=20
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
>=20
>  	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal =3D adjusted_mode->crtc_vtotal; @@ -2799,7 +2799,7 @@
> static void intel_set_transcoder_timings_lrr(const struct intel_crtc_stat=
e *crtc
>=20
>  	if (DISPLAY_VER(display) >=3D 13) {
>  		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +			       TRANS_SET_CONTEXT_LATENCY(display,
> transcoder),
>  			       crtc_state->set_context_latency);
>=20
>  		/*
> @@ -2816,7 +2816,7 @@ static void intel_set_transcoder_timings_lrr(const
> struct intel_crtc_state *crtc
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
>=20
> @@ -2826,7 +2826,7 @@ static void intel_set_transcoder_timings_lrr(const
> struct intel_crtc_state *crtc
>  	 * using the VRR timing generator!). Thus updating TRANS_VSYNC
>  	 * here seems fine even if it isn't double buffered.
>  	 */
> -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VSYNC(display, transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>  	/*
> @@ -2842,7 +2842,7 @@ static void intel_set_transcoder_timings_lrr(const
> struct intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>  }
> --
> 2.29.0

