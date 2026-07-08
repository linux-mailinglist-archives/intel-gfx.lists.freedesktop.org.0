Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CChpO2ELTmqvCAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:33:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB51472331F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:33:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h1m6BLHR;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A7810F042;
	Wed,  8 Jul 2026 08:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C751F10F042;
 Wed,  8 Jul 2026 08:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783499613; x=1815035613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pVh3TgfysIeSycbyBsCh0QBlxm3Y9OmK74cDb0LqPq0=;
 b=h1m6BLHRa5Rd2HA/209YWF8lAi0tCAADw+k47lZtofHqbtKXENtz//ex
 quuhl6SZuzAHXlIoVAfb8Bwu3FX80PzYyxSjhu+EhdRm4ZrFO6Rg9dcSh
 Ibk7FBo7sf0liRamlrXXXT2vLhYQj7MyZ8SJgzC/NXAoTpCWnHRcO+hm9
 QXefIf7+pBsCzwpWrWoP7qm0uhp8Y9dJQ5SmqCytoLPmY4t1lxLs41mpA
 oJIpqSl+H2zcdg+0eR5HIXKoU6i76Ts5SScMP6BIETBf+RBKGlxxbiNoi
 8QQYK+7JsJ5x3ZQFNIrCvAAtDv743Sg+U36kejYTfnp1LUupcLD0HYwvF Q==;
X-CSE-ConnectionGUID: S2j9IU7eSlGfwrdv2gQXOA==
X-CSE-MsgGUID: F2eNkk02TlSp+aT/qCNkTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="95313303"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="95313303"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:33:32 -0700
X-CSE-ConnectionGUID: 0vPuBzqIT8SFRXhr73CNZA==
X-CSE-MsgGUID: M0ATw0t0SAmViHvbOOHViQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250872042"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:33:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:33:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 01:33:31 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.23) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:33:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WEYq4nMKyJzjWni1EKcg2eO1IrcnJ4T0m41Ae8ubzgoxcuAv/WBNxzOn2mpDbyjcVR3/O6vxVUNjcMAH3K85DFTYrl+D+SlGiX9qryKh00riLsd8F9FTrDVaerVhaQw9WEGWt91hH66sH0XiYx7+5Z9S8D4tzrCkxOw1fXlQC5aQMVoPH/bFPC6Ykgad3g39TZqK78EjtW8EIasSHu7uPDBpMeVn2sCEMdvi7PlyxRsJH8GoqG3qsD+BxOT7NOgufN5I8lPlzAeDdNTa+6Ou6f4OQaic1DlADFphqln5UFDb4VoM6v4mgrXuy43QKVDi2gVxYgNEpiSBR/Ic1iryDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IxJtlpWPNQC7vBXguZHdiYHi8fasjAZSIaReeNyjKwI=;
 b=Shyck+LuyPSO/lcOQf+Zvb81cXfP/Js4SQCycwavgg7qXo6aMm0P4Y82vhWu5LW7QUP9D/JHswfAqSQycOvkX3z05vd0wI5U6CcKybRE1C7S7cdIpTSTp4IWoACroge0PL4078i0cICOOfBmMiM3B7noBZ065MfjHWqBcuTSu5HzemMjS8oaslqYM7nZDO9YprgnwaoCQQxSZoP/pQyjgYGZlxjqiaVO8WcGPfKQvh9YmUdDMyaQAChWpJDh73qD4akVMDCZJ5AlIH4eTRRlyqPk4KmyE9pp6IGLvabwXhjmeNYt5TFKzU9FhJGpt5JC77UYzWt1hkZ5hxdim4B/gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 08:33:22 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 08:33:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDUro2wYQ1P4prk+nkuo3mkDqobZhmAYAgAG0kvA=
Date: Wed, 8 Jul 2026 08:33:18 +0000
Message-ID: <IA1PR11MB6348A92B526BB81E06E57651B2FF2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260706132527.1687075-1-mitulkumar.ajitkumar.golani@intel.com>
 <DS4PPFE901A304FAE99DE6DDDDD6F437009E3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304FAE99DE6DDDDD6F437009E3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CY8PR11MB7945:EE_
x-ms-office365-filtering-correlation-id: 55a3ea3d-a2b9-44ac-0922-08dedccb8fef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|38070700021|22082099003|18002099003|5023799004|11063799006|4143699003|56012099006|3023799007;
x-microsoft-antispam-message-info: YuJMLUcBu/+P0BBjY/VG+p7uXly4la0U3F4rcK4ABTclLOjXoLYnNRYAiTHU8Rc2/Khzm/wla6PVIYp3yCK1aFsxgUF6P3ecJC/e3QOPlqel+yKp85fNo4hsv+uBQhHt7gzQV5HnQ6gKGtlFVAlM9wndKWWIRvUnUPOihFcBtDt6RVo9YE7RyjTSbrOSdOYhLpq6BwImrzLqRpoUg3x6ds3/8e5xctUjvVuCHdqKhQ6UdCDpWi1jg/9uwK2cfjeEa3f/nkH0w4l6lBbIWkSWDtoztegB989dRCbbi6xRfZ9eF8ISD20KtT3oOzzMtRxbRUowGW4LnudraJl0r2DeMgHZ4KbPRlPIcqr7O/fZcNAAh2XbhxGnPCYfL5eX3cMYRy+D0bvLIkQ3VOEpGWozhu0iphsro0ORC5DVaZE7OnDvUWdNT1H6k65QvOkWeSRSUjEcrgkeNaABWCF3Y9tlaf7flMZ0WQv0v0vxFtpHkU6//6pvwCGNBj8CrPx62upIqnaTDtXufFaAzAjyxtfgRrRFGTd0BADgEN9LNsRQxObjk5HgE8pGoY4guDJ/47MA2CTwOwVKptSLaGtUZ6CP3KxMATIJPtrlUmqVOQykjPd+iCP/5ZGFcFecAq760XNmj6+RYjWbq3e6fVYIVGsLdPCd71sYy6GHv2VhLkTEJln20FktwIBB8VVgFurq8V2tIqbyIYoRxky5gDiNHXwUCt91tZT5jyLbNzg6+4ORynU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(5023799004)(11063799006)(4143699003)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Smz36S7bcfNnOBzMaVxxxS76Fc1FNOQNSnHOlWnRvHaaagjmk2yAO34JdyOb?=
 =?us-ascii?Q?VCP00EKjgHMqyBQ/Nv48KEoM9zwzEwN13LDGmB37pKMrROJxbz2vDCRp93Xq?=
 =?us-ascii?Q?RkmU2WWgAhWEdvRm8CkkvSRRzmMFWy5q/wbGHCrZZHN+CFuFVAdEqcE6NLCR?=
 =?us-ascii?Q?0gfGk2M2GApsAHpwZZqn/s2EwIZh/yjn3NZED/n+IVd0+j/ALf5ljFEcA6tP?=
 =?us-ascii?Q?EusBno4wQ+nq/wJlPPUGnU1/y3x/LzywInRU/IvV8mI2Ee771tpIGVM4N+t4?=
 =?us-ascii?Q?UOK2fxBoeU24htw9/AsuK0dTDCHH3gortvJ9iOo3VY6ao8XapbRVmAJ9vwXR?=
 =?us-ascii?Q?y/6dOM+SGC181NQ8MQpPMmz0kEja8qterzjLolBn91flKkSH8nnsbtY8zKwA?=
 =?us-ascii?Q?nY6+izNtlBBhsoRh7VVA50clKzy2Qxs2iYUVEUZUtEVN+3fsPuw7o1Qbx7NX?=
 =?us-ascii?Q?TT9eLXLk2BO7YNFxNRF/FjX+DNX/YVlPiooG6DxKpI6z9wJVRZSkOaok5/5m?=
 =?us-ascii?Q?KNYbu3HS7BnkFv0SQcGOoM/O0dckG5Et7xhQszYD/PHBqfEp+iEAWqCOkKOU?=
 =?us-ascii?Q?UypS9AHUJMfuHYsq7d4QLDFZSx/3hk0ZhyV/outTgHVgCvtXCEYuejqc+My1?=
 =?us-ascii?Q?n8ByyhvNOLFVLK5u6JkPneZc/IGekdxvsDuMEjwH5nnAINia0G0jY/2R/FM8?=
 =?us-ascii?Q?FUn1iGc4Z9I1OaJ39qjvBDNOoJJco03wfBclTVD17EP8qn3po4/4Pg0Bn8Cl?=
 =?us-ascii?Q?7HkTnytWgGvFiWVNcy83wOBx1owt4AddBgQSVsHz0iqltW6pofqrMpGAfGXv?=
 =?us-ascii?Q?yef9JwsjtfJfIM197eTzNTipExEgbysuCh252jru6Cy329M5wfOpxx1wI/sS?=
 =?us-ascii?Q?AQYhmUpwhXJGqellkoQ7tL4wyh9+RwOjRYECv/IP8tTGExvItQal3cOUP29O?=
 =?us-ascii?Q?sVmi4RT33+gD7P5MQYhy7XB8qdCvSIuKAq/w21OmQd8qXgTMAor9/kytvVTo?=
 =?us-ascii?Q?0FODoxs23MwK+N9yYkStdWeVZGW3yeZkrPi/eXkNqXKEfEAHbEcDxl9DMkZm?=
 =?us-ascii?Q?sUxEca71gES4A/hhwAmyu0CECnmSeRJcicSfxkTLeaC4AdG9VHMXkmOePGxR?=
 =?us-ascii?Q?YsxGw89qyBne+LJhU1k+lLdJE8od8FzJGqJnKxI33HuX8p+Pv5yimCpYyhkf?=
 =?us-ascii?Q?QnM2PVNZzsmpG4hpNV8H2cjxbBCbmXiPmua15uB8JSRBLx3IBpbp2ms1d3TS?=
 =?us-ascii?Q?QbrOJYn2X6UD8wDMmrj9hFBTwnAoJq9n7a+ps6sxhomua2gcNe+ccyt22WQ7?=
 =?us-ascii?Q?t8AJsxyR4ZviXMuSdrtt0jMUzXsx9s6Jhbw4rf+aDnVSkiw4yZTv6r7oqAFQ?=
 =?us-ascii?Q?D9wwszLpAk+AIG0sgm0SeFXGFLEiwbRpwLwR3KAMv+EeCBPoh0saGv9Zo5Jt?=
 =?us-ascii?Q?27q9NoG2qS6y5+KZiERb1R/rCHfRkZKWPL8RLJpL+Ift2jxbTzoPiXJ/nsSh?=
 =?us-ascii?Q?m3H0rcP+K1ziyDyBb8TT0bLmRAhn0Bwo+HTvX+f90stREZxoC0lajuTX7NxW?=
 =?us-ascii?Q?XnVhtv8QOu2t1b3GqFiFRSlKqFemMh3efOlkW7xtDNfTjJGBhonTsuV36Isj?=
 =?us-ascii?Q?CQiD0/ewC3A/3irhHgqIet4NLuBqjcCJ+M3XXxQIOrkKdoYCHy6BnD34Popl?=
 =?us-ascii?Q?x6tc73TGT/ltH666NTYYNfP1lWhLrNuyusKIq3S97jKkWawkg/c9xXAHlCwL?=
 =?us-ascii?Q?ACOfqQipMdzR/889hr4TtWKRsVu40QE9861uyhnhqPNibfIKwwVL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rObjjnDLIfJCY6Q45fU8ZAIU606kuR0tPG9V1yTthoW8KtIvZYfELcF5wpCE/DiSeXhCGiA3N6ZK9HkbV8vn3cPs7yujIELFsLlOhoj7BDlZ01/vFIFFCB8ImVaC6znO4KU4nwXmJCq1E6oGGp8809n/c7fZ6fcZIkpcnSC6gEIcX/JadMR+f+yLxzHvf30a/0c4I1VLFDBYeRX+Z5Nr7OdgNlVqPayFddZJ+gnPLjo+8CLcRvDqAw77rMkhmsgKcHmeBE//EBX7Tf/Md6l6l2cnhKIzgL/PznKdtu8qbfmJfOdLiiRdmz8+6Zj/2AuCM3LMux7gh5qf5Nx45IXTAw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55a3ea3d-a2b9-44ac-0922-08dedccb8fef
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 08:33:18.4327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yzyUjbRwsuzA3cE2C757XSx7WR6OAR21O2RWn0z7u31NbgB8q12BFEXubk+SLU+TiGazQZmO+ikIaNUCQRaLzjp5I3m1si69//ugy46IHrYBAQaKp52O3TwsFSmCP5Jx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB51472331F



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 07 July 2026 11:55
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Lee, Shawn C <shawn.c.lee@intel.com>; Vehmanen, Kai
> <kai.vehmanen@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: RE: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20
> > Subject: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
> > cpu_transcoder signalling
> >
>=20
> Hi Mitul,
>=20
> Thanks for the patch. The fix is in correct direction but I think both th=
e
> commit message and the code need rework before this can go in.
>=20
> > UHBR SST uses the same 128b/132b transport as DP MST, so its audio
> > also lives on a meaningful cpu_transcoder (>=3D 0), not the -1 used for
> > legacy SST. Treating it as Non-MST made pin_eld_notify() signal -1 and
> > made
> > find_audio_state() skip the per-transcoder entry, so after
> > suspend/resume or replug the ELD lookup failed and audio went silent.
> >
> > Detect UHBR SST alongside DP MST when deciding how to address audio
> > state, in both the pin_eld_notify() signalling and the find_audio_state=
()
> lookup paths.
> >
> > Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 67
> > ++++++++++++++++++----
> >  1 file changed, 55 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 9729f1837d2c..4586bf981255 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -37,6 +37,7 @@
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> > +#include "intel_dp.h"
> >  #include "intel_display_wa.h"
> >  #include "intel_lpe_audio.h"
> >
> > @@ -696,6 +697,42 @@ static void ibx_audio_codec_enable(struct
> > intel_encoder *encoder,
> >  	mutex_unlock(&display->audio.mutex);
> >  }
> >
> > +/*
> > + * 128b/132b transport is used for both DP MST and UHBR SST. As far
> > +as audio
> > + * is concerned the hardware behaves identically in both cases: the
> > +port can
> > + * carry multiple streams and the cpu_transcoder is a meaningful (>=3D
> > +0,
> > + * possibly > 0) identifier of the audio stream on that port. Legacy
> > +8b/10b
> > + * SST instead carries a single stream per port, for which the audio
> > +drivers
> > + * expect the cpu_transcoder to be signalled as -1.
> > + */
>=20
>=20
> DP MST and 128b/132b are independent:
>=20
> MST is a topology feature - multi-stream via MTPs / payload IDs. It runs =
over
> 8b/10b at HBR/HBR2/HBR3 and has done so on virtually every MST hub
> shipped to date.
> 128b/132b (UHBR) is a link-coding feature from DP 2.0/2.1 and can carry
> either SST or MST.
> They only overlap at UHBR MST. The commit message along with comment
> mentioned here fold them into same  thing, which will confuse the next
> reader who touches this code.
> Also, the comment says the criterion is "128b/132b" but the code is "MST =
OR
> UHBR" (MST-over-HBR3 returns true here). Pick one - I think "MST OR UHBR"
> is what you actually want, so please fix the comment.
>=20

right. Will fix the commit message and comment block
to describe the actual audio-addressing requirement with next revision.

> > +static bool intel_audio_has_mst_transcoder(const struct
> > +intel_crtc_state *crtc_state) {
>=20
> name is misleading. UHBR SST is
> single-stream by definition - calling its transcoder an "MST transcoder" =
bakes
> a false concept into the code. Please rename maybe
> intel_audio_needs_cpu_transcoder_id().

Agreed. UHBR SST is not MST by definition. Will rename to
intel_audio_needs_cpu_transcoder_id() to reflect the actual semantics.

>=20
> > +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> > +	       intel_dp_is_uhbr(crtc_state); }
> > +
> > +/*
> > + * Same as intel_audio_has_mst_transcoder(), but derived from a
> > +stored encoder
> > + * for which only the (legacy) crtc pointer is available. DP MST is
> > +detected
> > + * from the encoder type without dereferencing the crtc, so that the
> > +MST path
> > + * keeps working exactly as before; UHBR SST is detected from the
> > +active crtc
> > + * state of the port encoder.
> > + */
> > +static bool intel_audio_encoder_has_mst_transcoder(struct
> > +intel_encoder
> > +*encoder) {
> > +	struct intel_crtc *crtc;
> > +
> > +	if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> > +		return true;
> > +
> > +	if (!encoder->base.crtc)
> > +		return false;
> > +
> > +	crtc =3D to_intel_crtc(encoder->base.crtc);
> > +
> > +	return intel_dp_is_uhbr(crtc->config); }
> > +
>=20
> This is unsafe. It's called from find_audio_state(), which runs from the =
audio-
> component path under display->audio.mutex only, but
> encoder->base.crtc and crtc->config must be accessed under drm_modeset
> locks. That's exactly why display->audio.state[cpu_transcoder] is cached =
in
> the first place - see intel_acomp_get_config() which deliberately only to=
uches
> the cached ELD. It's also racy vs. a re-modeset flipping the link rate be=
tween
> store and lookup, so the same entry can be classified UHBR on store and n=
on-
> UHBR on lookup.
>=20
> Don't derive this from live state. Store it once at codec_enable time (wh=
ere
> crtc_state is fully locked) on struct intel_audio_state:
>=20


Regards,
Mitul

Valid concern. Will eliminate the live crtc access entirely by caching
the classification as a bool needs_cpu_transcoder_id in struct
intel_audio_state at intel_audio_codec_enable() time (where crtc_state
is fully locked), and clear it in intel_audio_codec_disable(). The
intel_audio_encoder_has_mst_transcoder() helper will be removed.

find_audio_state() will then read only cached state under
display->audio.mutex, consistent with how encoder and eld are already
handled.

> struct intel_audio_state {
>     struct intel_encoder *encoder;
>     u8 eld[MAX_ELD_BYTES];
>     bool needs_cpu_transcoder_id;   /* MST, or SST on 128b/132b */
> };
>=20
> set in intel_audio_codec_enable():
>=20
> audio_state->needs_cpu_transcoder_id =3D
>     intel_audio_needs_cpu_transcoder_id(crtc_state);
>=20
> and then find_audio_state() has no live-state access at all.
>=20
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state)
> @@
> > -769,8 +806,8 @@ void intel_audio_codec_enable(struct intel_encoder
> > *encoder,
> >
> >  	if (acomp && acomp->base.audio_ops &&
> >  	    acomp->base.audio_ops->pin_eld_notify) {
> > -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> > MST cases */
> > -		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> > +		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> > MST/HBR cases */
> > +		if (!intel_audio_has_mst_transcoder(crtc_state))
> >  			cpu_transcoder =3D -1;
> >  		acomp->base.audio_ops->pin_eld_notify(acomp-
> > >base.audio_ops->audio_ptr,
> >  						      (int)port,
> > (int)cpu_transcoder); @@ -825,8 +862,8 @@ void
> > intel_audio_codec_disable(struct intel_encoder *encoder,
> >
> >  	if (acomp && acomp->base.audio_ops &&
> >  	    acomp->base.audio_ops->pin_eld_notify) {
> > -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> > MST cases */
> > -		if (!intel_crtc_has_type(old_crtc_state,
> > INTEL_OUTPUT_DP_MST))
> > +		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> > MST/HBR cases */
> > +		if (!intel_audio_has_mst_transcoder(old_crtc_state))
> >  			cpu_transcoder =3D -1;
> >  		acomp->base.audio_ops->pin_eld_notify(acomp-
> > >base.audio_ops->audio_ptr,
>=20
> Please drop this hunk (and the symmetric one in codec_disable). Boot alre=
ady
> works with notify =3D -1 for UHBR SST, so the notify code doesn't need to
> change to fix the reported bug - only the lookup does.
> Doing both at once is a wider change than needed and blurs what's being
> fixed.
>=20
> >  						      (int)port,
> > (int)cpu_transcoder); @@ -1119,17 +1156,23 @@ static int
> > intel_audio_component_get_cdclk_freq(struct device *kdev)
> >
> >  /*
> >   * get the intel audio state according to the parameter port and
> > cpu_transcoder
> > - * MST & (cpu_transcoder >=3D 0): return the
> > audio.state[cpu_transcoder].encoder],
> > + *
> > + * A "MST transcoder" below means 128b/132b transport, i.e. either DP
> > + MST or
> > + * UHBR SST, both of which use a meaningful (>=3D 0) cpu_transcoder to
> > + identify
> > + * the audio stream on a port (see intel_audio_has_mst_transcoder()):
> > + *
> > + * MST transcoder & (cpu_transcoder >=3D 0): return the
> > + audio.state[cpu_transcoder],
> >   *   when port is matched
> > - * MST & (cpu_transcoder < 0): this is invalid
> > - * Non-MST & (cpu_transcoder >=3D 0): only cpu_transcoder =3D 0 (the
> > first device
> > entry)
> > - *   will get the right intel_encoder with port matched
> > - * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with
> > port matched
> > + * MST transcoder & (cpu_transcoder < 0): this is invalid
> > + * Non-MST transcoder & (cpu_transcoder >=3D 0): only cpu_transcoder =
=3D
> > + 0 (the
> > first
> > + *   device entry) will get the right intel_encoder with port matched
> > + * Non-MST transcoder & (cpu_transcoder < 0): get the right
> > + intel_encoder
> > with
> > + *   port matched
> >   */
> >  static struct intel_audio_state *find_audio_state(struct intel_display
> *display,
> >  						  int port, int cpu_transcoder)
> {
> > -	/* MST */
> > +	/* MST or UHBR SST */
> >  	if (cpu_transcoder >=3D 0) {
> >  		struct intel_audio_state *audio_state;
> >  		struct intel_encoder *encoder;
> > @@ -1142,7 +1185,7 @@ static struct intel_audio_state
> > *find_audio_state(struct intel_display *display,
> >  		encoder =3D audio_state->encoder;
> >
> >  		if (encoder && encoder->port =3D=3D port &&
> > -		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> > +		    intel_audio_encoder_has_mst_transcoder(encoder))
> >  			return audio_state;
>=20
> With the stored flag suggested above, this becomes:
> if (encoder && encoder->port =3D=3D port &&
>     audio_state->needs_cpu_transcoder_id)
>     return audio_state;
>=20
>=20
> >  	}
> >
> > @@ -1158,7 +1201,7 @@ static struct intel_audio_state
> > *find_audio_state(struct intel_display *display,
> >  		encoder =3D audio_state->encoder;
> >
> >  		if (encoder && encoder->port =3D=3D port &&
> > -		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
> > +		    !intel_audio_encoder_has_mst_transcoder(encoder))
>=20
> With the stored flag suggested above, this becomes:
> if (encoder && encoder->port =3D=3D port &&
>     !audio_state->needs_cpu_transcoder_id)
>     return audio_state;
>=20
> >  			return audio_state;
> >  	}
>=20
> According to me this fix can be made smaller like this,
>=20
> struct intel_audio_state {
>     struct intel_encoder *encoder;
>     u8 eld[MAX_ELD_BYTES];
>     bool needs_cpu_transcoder_id;   /* MST, or SST on 128b/132b */
> };
>=20
> In intel_audio_codec_enable():
> audio_state->encoder =3D encoder;
> audio_state->needs_cpu_transcoder_id =3D
>     intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
>     intel_dp_is_uhbr(crtc_state);
> memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
>=20
> In find_audio_state(), We can do this instead od the DP_MST checks:
> if (cpu_transcoder >=3D 0) {
>     ...
>     if (encoder && encoder->port =3D=3D port &&
>         audio_state->needs_cpu_transcoder_id)
>         return audio_state;
> }
> ...
> /* cpu_transcoder < 0 loop */
> if (encoder && encoder->port =3D=3D port &&
>     !audio_state->needs_cpu_transcoder_id)
>     return audio_state;
>=20
> Regards,
> Suraj Kandpal
>=20
> >
> > --
> > 2.48.1

