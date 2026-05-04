Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ESKKUkP+GmxpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 05:15:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D624B82C2
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 05:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4710810E362;
	Mon,  4 May 2026 03:15:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVSetF6I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2F010E364;
 Mon,  4 May 2026 03:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777864517; x=1809400517;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ibSxLzCKxcwrNz6/3SoBIgjSDtNWTsvNWpEyAt1Tg0E=;
 b=KVSetF6I/vGIHSUUuzKY2ywPA6tL8rfaS5DIY7fMe/vpY8BFZgvY/ysG
 kpeiDO8hUmjnoZt8Z3Pf1stO7BrRu1kI95rXbBw9PQFycILiSeIAYokBl
 PtQVH8/nYJXJwJoBP3f5G6X9Gt/cBKqWq1F3KoeFXCZHv/YNOZAFQ31rU
 hwpMcHIME7/MGkoYyNp6ThYziCSTKQx8/gqHXre75R2jZZ7qgOVJF7G3S
 +88XQbmH/wox6RTIl9cJ3lh4dwXaVsdqFSVU/alp1O2Qah22w1jKmwwK6
 udaU/SGmwww6XTyR+rE2kfko5Sx6idEVZOdqel1jxhAaHB3YTs5/kJXXX w==;
X-CSE-ConnectionGUID: hsy+g1wBSVWmQTTceGvUCA==
X-CSE-MsgGUID: zFJfe7+7SKW59OHu9kbxTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="89413477"
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="89413477"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 20:15:16 -0700
X-CSE-ConnectionGUID: QzHPU1K5SFuIH2Y46mLFhw==
X-CSE-MsgGUID: lYCyzpsyQ96IDYqsXDaNtw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 20:15:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 20:15:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 20:15:15 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 20:15:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DkM5VdE1D2RATsfl38TBphmGMTZelwFeRv3895AlmMsMUgK+cRFm3l3hq6Zvff1K7SOwAw+x3ycG4jHa3gyte5AP7b0GiAy4a/o8/oXy5X/tGabcwmNMMhzHOIv6bO0cI+QHLSmq4qYDjhdGgdAblFepgCJh51nWmHauTQB9EIjhcrECDFm9z8lOeZBnRZzLkkrNdjw4eJgDwCRROwBDSqlry5pGrWFkKsu/sLk0WsTOjUiFRpHUPmLlByoou4hsTUip01RM8kT6/WE1w22oftha+qViSayFtdwEG1b1vBUjMykwAOVvJQrODc0cygpXTeyb1ElTt/fwnmyiPwnT/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHVWt7T4FG5Mu8l9eVnXallnGueEl1/ZChAR0uC1HeM=;
 b=RUHsq8rGFTXVSnk89g0Osdhlq63l3jRJjwfxJwIh++LJMyxc3/MABj0b7AoreV0EAxvwYb7Qop16W6vwGk3yZRV2iDdY/IfG8DolXJxtHU88LYNBCFH9VK2/t7UGXdt2HHfMHLvoLrIdCCid92OwwHOWWeBa5SmI0s2P0Jd2h30HuIlMbXqq8RPsbFBcJ+Ifgg7eYF0/apsDMN9lrZooBsSwA6nRzQzNpLAwn9H29fj9TEalyQeGpKsS+bhsX86P5dR2Pjw7rMfsGXhcSmMRjYsQWuIOho3t8ZItIhdP9DqOcswv0d5I4EmBHDTNrOCCDKKTaqHecaJjd/+0egCnlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 03:15:12 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513%2]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 03:15:12 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Topic: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Index: AQHc15B/+byiPZCep0OuclP28IqYfLX2RkVggACiYYCABk9/AA==
Date: Mon, 4 May 2026 03:15:12 +0000
Message-ID: <PH7PR11MB605327187BA6A7B90F219221E7312@PH7PR11MB6053.namprd11.prod.outlook.com>
References: <20260429042650.3335718-1-suraj.kandpal@intel.com>
 <BL1PR11MB6050830351318309AFDA45C8E7342@BL1PR11MB6050.namprd11.prod.outlook.com>
 <DM3PPF208195D8DB762EE71AC17C0C12B42E3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DB762EE71AC17C0C12B42E3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6053:EE_|PH7PR11MB6449:EE_
x-ms-office365-filtering-correlation-id: 88a48ae9-3e37-4a43-aece-08dea98b5b1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: pdcZNgDyRed9VzUdBNFVQYko3iMEUIq1F1oYj7OpDP56Bjd6mH5vlpXusRc4a1p3WwJG01w9pQ3SN/dFl9bubiX0H7IpFP83C5wwuyw1n8FF47fr2Ig1TmcTfk3vm3RL09x0XWQcqzT0SsLCucjr2aU2TBqfILVuXPLiwEVfLv4xcpGtIOrQb4hq5qKgMk3rwy0NRobsULNAXt5pzlysXaI8u1MGuTse7+kJQZfXlUiSJs/o8yacg0qgNPTqfJ6yzYTUT6BhqUpxbZUMMJvOCPgMaBjKUE5MyQ5knEnHvRtuK2HQKJgMxvQo282E8I/RRp9P4dK6KxxAVh2vCVjmHEx01KyfCkVMeLfav2CExq70QtOf2fIqXTIE179dpD4rJerfPT8B3y1KIo6Pb+t2A9k1UPYfKnDkSQq898e8gNKM43p6J5LcscYXpbigzxiK7eutMk5JlaB8LolDp2FMJ14L684XTohkYWGVmenQGkpYh81A7pPiheI6kElGZQDrjldUurEjOVxhp/gm9XPKwXEUlpkvzKSDlyAXwoKJRZ8vvNTP7Mqpl0lz4o43KsJed52vgBB0gk1ssARgO4Qp7hcSD8YHCE6YtICwMOW0X9nv7eOHFHR5Jcvxla+HEun+piwzp1X0ZHCUikfjcs0qfRafFr+dSe5515/HWWzUaQR40lqXkA2xRbZxseaRE3ZThlls0HPmjgT1f5Wnn/PqatBRuFxvWlqSUBQcLX6blk8HPGYPKgUKMO7m/dkzEPV1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TI1ZgH5gGb7QMoMOO9fJl9CSQpq9D5+sI7fco3mvOO2vJRzDcY5wko9aNjbb?=
 =?us-ascii?Q?fdYMR9phWN2jGUivFShO20eTzS8M1T4qJKiHKrUiBjkRsY45hgI87WdagYAS?=
 =?us-ascii?Q?9iihnEgdAwOANR3N/rp7Zj/97WTRG06kBPFbe6uP2YZyriHCw5L3JF4b0Rgo?=
 =?us-ascii?Q?rboGVx4DJFBSdhiUrgmJDXOgQBZbHtSMN4akmTpkvp5rtVeQOjMVPcvqdOkL?=
 =?us-ascii?Q?1aVVei8OsZOmd5i+wnK6WzBUsaXXSb9wXdjadq/7bmkIz30V+aGshCCT2CcL?=
 =?us-ascii?Q?LGI9uic7Cgf/LzTKcNnx6GBOdi/Unez+FCDkEwqmqpxAPMJeCpv2RhrL9SSJ?=
 =?us-ascii?Q?K2eFZX03jCDgzVa3iBHwzaAy/PHL0r7v3TsivVVbRaIvWbYgBAZ+PQTzu4nj?=
 =?us-ascii?Q?UTicJCekcHtYgtZdtlNZA9jiV+KGqP/B5rRLbqakjlkz06Vr0JZ/6VnKjxIA?=
 =?us-ascii?Q?a3RoxL7xH/kjlkllvVF9OO6qmlXrcAPxhJHLKE1TVbNfbEXXPqtSz5SQBeCU?=
 =?us-ascii?Q?hI82lNahCFoW4jmxo+wcgFuJS6vKBlwyWoEMMakJCb2oXqNC2mj7mQAENCts?=
 =?us-ascii?Q?jzwf0fRp70e5r6jjxyp6T1SMVMkT6xoKll8GPg+QIvfn7TSx7SVv8RCSuZoT?=
 =?us-ascii?Q?+APp4GgZd7NLUG7vtqIwlKd7myOYUUY9hiE18zr7HCMa1Iq6gPLowVaqPTQj?=
 =?us-ascii?Q?2siir6pvEIXkzdGLTKVbH1c66sac2qtU51scuML+sVCxxEu9bxSdEnedtAgB?=
 =?us-ascii?Q?xuTxQQQ8XNok0oOpzXjtPkXI+eSDLA0Hvk3WZlT1XsMNSQjau4Q79SP3GS5Q?=
 =?us-ascii?Q?SJEuP5KZg6fVP4MdaBONiXOAeKgpD00zmRC4tmksOYhYDBhnGTD00k50GQWJ?=
 =?us-ascii?Q?HiEGkoVWeuoAm+++1/iupi00/f6VaftJzEz8HflcuUj6pyM/XxMgRXpsJE8M?=
 =?us-ascii?Q?N18A2Ck41gxCohOhlA+EiRBT8uEc/mKyY/iPoqelE3v5P0UOqrTVKaMPdkwE?=
 =?us-ascii?Q?CmrmKSYNdQs5PikXWwo0lDfiaqkB0FsLZBFiwZASy3mII/l2wGurDKjPI3Bp?=
 =?us-ascii?Q?ncu8XhyCAmo3ob19fJHfEjp118xc9hJ+nHSBFJf1GHDY1cCkxfjYf9jxFFvu?=
 =?us-ascii?Q?GQ51E01/00HvWbQcAVNAK8t60gsy005Jc6/0yOLdI/v21aJMVY46nkAm9Ce2?=
 =?us-ascii?Q?tOnbaz3WtWiSDHjxDUlO6cZy+vgxwq8kga/PKmT8nGWnbBamwksDUKblQFUd?=
 =?us-ascii?Q?0ILftz33lTbE0p+idQGnFfaRcNIlfZxSyxmFGHVX4A9zwr0Bj5xEbOGvPnrb?=
 =?us-ascii?Q?+wmOC1PMJT9tFLExGWUEdY7ZnHiSuoI3fNcavpW+EquQb5NL61XY+wkjiMro?=
 =?us-ascii?Q?3HqgHKGdUnT60z+Sq2YDEgJrE0eEFj0NjEQ1ZML5iGLUpAlEklSNr6xL4jSt?=
 =?us-ascii?Q?A6jLkzaCfjxjyw+RS6xLVrHwMMoL2m02Y0fznUj/Xu8moGlOGAM8gtmpAR1p?=
 =?us-ascii?Q?Kxvv2vfWmLqwdDL59W1mNO4UpTC6eE+9oUJ0Pnx3xdJ3FlLvvJV63EIPFplY?=
 =?us-ascii?Q?WU/GsIzKGdK7gCT8ZY4ruX3KrarEQfyu96hs7u41LdvReGOLWbsGiNbrEbuN?=
 =?us-ascii?Q?+FfUzY9q12jp4JsV0YCZjgjnoizgBbp6Gw+xDiL3SjuQto06uTNPNX/Tjo8m?=
 =?us-ascii?Q?BaIilEZGsMWhsiKep7l+0CuRVbUdIVo87wP5zrDOsyFuiyryOQuDsA3MSwA9?=
 =?us-ascii?Q?S7NLnRTB8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dSxjPvhgNm7myOm4iTjOyoHJPFOFneVTy50oxvxPBr9d+jTtfaSpKpj8sEobXTzyGyp3KZyFqmAccniH1dPjY01L0E/2JMyG/nU7ou8Fpo9JCf9Y6/DeByg7X+/1NVbDlXXO3d+bTNbgrQb2Xdayw+d47sVS7zfpBxZDBOFxRjQnaZE6iEh3vaQ2sFtar27dwvLadWjyMYX/5N9CStpqiPMLdp+omHhgrSOJH1CIbyiDKlLSxhZWbOImLsg3MC1deOmwfdE+bTCPyFxLuloLo9v8HtJi9B+nMeOfOG96bbPGkwBtpu8u6RtgjxEBphzI62gsIWZBgLYNPZ/nwPJPiA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a48ae9-3e37-4a43-aece-08dea98b5b1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 03:15:12.7178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tkFDbtn5e5e0DqrFHiCCbEAPhlrPwSUuks18B1XdbXllfIDZkdb4u4dng34vknq3g4fmLFizEYj9Jpy/wHb13A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6449
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
X-Rspamd-Queue-Id: D1D624B82C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,sprite-rotation-180:email,PH7PR11MB6053.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]


> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, April 30, 2026 8:19 AM
> To: Samala, Pranay <pranay.samala@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values
> after crtc_enable
>=20
>=20
>=20
> > -----Original Message-----
> > From: Samala, Pranay <pranay.samala@intel.com>
> > Sent: Wednesday, April 29, 2026 10:42 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE
> > values after crtc_enable
> >
> > Hi Suraj,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Suraj Kandpal
> > > Sent: Wednesday, April 29, 2026 9:57 AM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> > > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values
> > > after crtc_enable
> > >
> > > When a CRTC is moved to a different transcoder (e.g. on DP-MST
> > > stream allocation), PIPE_SCANLINE and PIPE_FRMCNT can return values
> > > latched from the previous transcoder/mode for up to one vblank
> > > period after the new pipe is enabled. The vblank evasion code in
> > > intel_pipe_update_start()/end() then samples a stale or boundary
> > > scanline and the frame counter ticks during the critical section,
> > > producing diagnostic errors of the form:
> >
> > The stale PIPE_SCANLINE issue happens only when the transcoder
> > changes, but the vblank wait is added for every crtc_enable. Since
> > intel_enable_crtc() already has access to the old and new states, can
> > we add the wait only when the transcoder changes? This would avoid an
> extra frame delay in normal cases.
> >
> > Regards,
> > Pranay
> >
>=20
> Hi Pranay,
> Thanks for the review
> So here is my why this is put here:
> 1) intel_crtc_enable() to begin with run only when
> intel_crtc_needs_modeset() is true not every commit, Just on full modeset=
s
> so the latency here is negilble.
> 2) I don't think the trigger is strictly "transcoder changed." The stale =
read
> comes from PIPE_SCANLINE / PIPE_FRMCNT not having seen a live frame yet
> on the freshly-enabled pipe. That happens any time the pipe transitions o=
ff
> to on, regardless of whether the transcoder mapping changed. skipping wai=
t
> when  transcoder is the same would still leave a window where the next
> atomic commit can race the first vblank.
> 3) Also, I don't think "transcoder changed" is the right check. Comparing
> old_crtc_state->cpu_transcoder to the new one only catches the rebind cas=
e
> - it misses the more common path where the CRTC was fully off and we're
> just turning it on (which is actually how I hit this most often with
> kms_rotation_crc on MST). To cover that we'd really be gating on
> !old_crtc_state->hw.active, just makes it a full modeset check - and that=
's
> already exactly when intel_enable_crtc() runs. So the conditional ends up=
 not
> buying us much.
>=20
> Regards,
> Suraj Kandpal

Hi Suraj,
Thanks, got it now.

I was associating the issue mainly with transcoder changes, but now I see t=
hat=20
it is really about the pipe being freshly enabled.
Changes LGTM.

Reviewed-by: Pranay Samala <pranay.samala@intel.com>

>=20
> > >
> > >   [243.348405] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure
> > > on pipe B (start=3D300 end=3D301) time 61 us, min 2128, max 2161,
> > > scanline start 1200, end 2165
> > >   [248.536260] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure
> > > on pipe B (start=3D561 end=3D562) time 61 us, min 2128, max 2161,
> > > scanline start 2162, end 2167
> > >
> > > Here "scanline start 1200" is the vblank_start of a previously
> > > programmed mode on a different transcoder, while "2162" is the
> > > current mode's vblank_start sampled before any real frame has been
> emitted.
> > > Both indicate a stale read rather than a real evasion miss.
> > >
> > > Wait for one vblank after crtc_enable() to give the new transcoder a
> > > chance to start producing live PIPE_SCANLINE/FRMCNT values before
> > > any subsequent atomic commit enters the vblank evasion section. This
> > > adds at most one frame of latency on modeset, which is invisible to u=
sers.
> > >
> > > Reproduced with igt@kms_rotation_crc@sprite-rotation-180 on a DP-
> MST
> > > sink; with this patch the failures no longer occur.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 674a4ece6d0f..8ebd0df25c11 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6741,6 +6741,8 @@ static void intel_enable_crtc(struct
> > > intel_atomic_state *state,
> > >
> > >  	display->funcs.display->crtc_enable(state, crtc);
> > >
> > > +	intel_crtc_wait_for_next_vblank(crtc);
> > > +
> > >  	/* vblanks work again, re-enable pipe CRC. */
> > >  	intel_crtc_enable_pipe_crc(crtc);
> > >  }
> > > --
> > > 2.34.1

