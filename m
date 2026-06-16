Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tQ20K/4UMWpfbQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:18:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D168D74A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hIUGCoJF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D6210E98C;
	Tue, 16 Jun 2026 09:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0407C10E98C;
 Tue, 16 Jun 2026 09:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781601532; x=1813137532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mGXipTWn3RPkzZ938NhiPU31Ni31yVbWizITV4ftLzY=;
 b=hIUGCoJFHpEr8iFk8SsdabRJBOoRZy5pgEvtLUd08/JSOyyieCieb+4n
 yPaU2ez3PPxNAx0R4WgGNigzPGJqqoWVCtiYgZTs0bJwv89kB72FLNiTQ
 OAqcWE1CCdOJ+AWuA4A95C4RXa2rsp/cMPLKXpWO4+sZtKX/B2Jo5uIXQ
 /N6uEije+ClhozGQaSq3BS1PreoR4xv3EkmxdU71PzgPoMrcQKOmrJIFL
 mLGMh0z+jkRvncJx3nRyh8InOBzDwna4/gN9UJpcZLN9UkkeD+ECt54B9
 l7dtGINyySgJ/huGv0c6CGHI7cWNt238ANiY63JHmUnzSEmZjEcil5VEt w==;
X-CSE-ConnectionGUID: FqGR1hXdR0uzqcDKvthtIA==
X-CSE-MsgGUID: eYUPfU6rSw+hg8ET91qgIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99934292"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="99934292"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 02:18:51 -0700
X-CSE-ConnectionGUID: xhJFs9r5QLK/0J1bNb5aHQ==
X-CSE-MsgGUID: ss3Azs0EQZK6i9VL+fbbgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252691909"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 02:18:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:18:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 02:18:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fH7zs9F+FmZrh6DZYBogxZymp5dXfxRXciFC0oPDjwows21K7FHeERaxbNke0iEVWYqCkrMhl1ovaPD+gbsQt1qEZAjMzTPcJGPyVUkf5MzLjaK4GGesRn+YNHHlNHnROjlzv44Gs08nH/L1guLjGCEQdRwRVi3m8xKikPsqIOETo6IkVGDgF0169/7ne9vcRn8yzSmLgXnFOoy86MiR3k8xMswHCvhAZes85R844J0LLUaMWr+hDvSTNaGXtGtc4/Nx9Z6tC+Aw7tlqLncfNGLclSFyhoOeEYiEL++b5p+4m/XNTauyJ3ExKvgORBpV9qXBOwFd3wcxVUw8HdbUwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bdItzJcpZHCIA6Jq9q+UWyQ1nGZ8utuz1Jo/iUMfPw=;
 b=GY09nbghCQ66TIAUt58z9VxgIZL5a93V08hSHhy7VvuuV2tiCz0TBWJ1kjwiSoAmmKzLITh1hthQmPpj4/HBwaYqMNuOrVycrzaDl5EcazqBnmdKfkWvsm6wRDSKj3nCmJ+f6zcZsKQvmBb+HnjPk7x52PX8GSBX4Yqvw8gyN/QnOSD67u2pJ75RtJnkqnTHGBJC295eV+ixA+VuByQ/KxyILAPmkXx8hbPlFu7K6eZME3PpjzPkkDnZbsskV7mEMlicxpjvHlHl91Vk6t4rFQzISXq4N77A57uupIlhWiSu/74LvPH5bSYgakB0il9f9dlnkXY7Wz+JZhJsYJpBrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB7764.namprd11.prod.outlook.com (2603:10b6:610:145::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 09:18:48 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 09:18:48 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Stephen Fuhry <fuhrysteve@gmail.com>
Subject: RE: [PATCH v2 0/2] Unify fec enable/disable across the mst streams
Thread-Topic: [PATCH v2 0/2] Unify fec enable/disable across the mst streams
Thread-Index: AQHc/VfVG8Nh/kcQk0+S0d+CHaI6y7ZA0egAgAATPZA=
Date: Tue, 16 Jun 2026 09:18:48 +0000
Message-ID: <IA0PR11MB7307A79EC4257F777C568FD1BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260616-fec-v2-0-49a22680138c@intel.com>
 <9827508667e0b19e939284e7989a47df278667f7@intel.com>
In-Reply-To: <9827508667e0b19e939284e7989a47df278667f7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB7764:EE_
x-ms-office365-filtering-correlation-id: f8d1df8b-994a-4d9c-769d-08decb884632
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: Osg9GkL6hdTdtzy2Xjky2yAZVneO4zjnRtZHBmnd8qsmJstAvfEb5XNfPS2qcHTZptbpchHKZtj4yTz3GBKMNv5Oh0RWbmMOb5t2cwI2W47vIG+Uzjf2FjchcheFtww6rWxLu84OTLM4xSKOYYn0bTCOYE53/1XRjTN20HE9N8zcDsTNQiaP8yJxW+m8V3NODJX/o6JJGdu3AoueRVO3rqlU8RoKUQj5KLxiVnLqpQxM4xe0eex3Oa0rRpNRv9ypdnwbNgfb46jgHplN7QviLOpVjF90UIfGpzgvbbxYtqJxeC+0o4oYaEqex2NG2yEsvjkKsFzxfiXm3QI1wuW7hD5jIVPiNwAjcovRTdbsSvmShyvxcRYFile+Tw/xKB4Ew7nUZ9vdn+aczCtOsXAE7+QpDNZ1J7AE5S2BZz1Vo13snckHCeZOdyMqj/YYFXx8n8PHI1/6cFj/u16nYCrQ+BB0UtZCy2tXvbIoTzw/jj/iQ1+Upt6RQEi342+DJWjz5V/+r7I9FmoQC+OUWrU5UMQJjwDX5GSNWO4z0KnigTymwejY5EITvglZaOoIs53MTcDZPdqbTxyxRUXWxv4kYLx0Y6xYWDu79awVCHdyb19/hrOvRW/ysNaEiIG41Dvah37SgApkp+MavZYkQKSjMpjwn4EB8T7sjQWXDqxmUZqiNmCVyaMEwN04pI4gnbOmXASmZCZxm2utT2VtmBR45w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cw9//gsDqz7Nx0e73czf3ViX6f+/Z8z79xCvhGKseDHBSMur8mmI0WlKUT/+?=
 =?us-ascii?Q?ARCZIjWi6CPcoJ9UsN6eJ1tBq9g6sLhL88RXc177soEXjtT4wCaYFfE51Hlv?=
 =?us-ascii?Q?m3gWv80KC+1wfx+mVrTfAP/QQLWpHFJKLO30oguJ8s7vGJcVAO4eI5alqtDP?=
 =?us-ascii?Q?cAr6WV52z4qAUfpMag8E3ORWQKsOUjCkLK4QmeGRaiSFFozNWVOarOCb9ji7?=
 =?us-ascii?Q?ACj7d5Jji5YtnCurmHqEdfE59JpyhbOYMj/2ttRK4ufZxSIZ9rTfWK0lmC4Q?=
 =?us-ascii?Q?OM45HzMXFp0YId9uEsfiVnzQ71+SRlH2rSA5iri3MqVpFliD7nmaMiKyTybB?=
 =?us-ascii?Q?Um8ts2bev6P+gdp3BMBTEGFgFfE5jPjmk5RATxV9/awbRjvwuobxUbIuiXJL?=
 =?us-ascii?Q?rQj9LxWThAJOI9g9unBdKYe/QCD6tR2Qlfeg5iKoC1Rs72Px/Mc5U1hpI2KF?=
 =?us-ascii?Q?gTHHafbpJbKh1AVvCZs+qBSpI5VaSg5Yz+2rXfnM715nMhf0/IH1ymxhufgY?=
 =?us-ascii?Q?sc/Je+BXD3RteViKuRvIWprnZzI2Yb+VCTVm7LtwD60PJhCCduFSNLIiJCkl?=
 =?us-ascii?Q?2OjQ1GLxJEg+f3wAA2FDx1Z7zZYliQPcu05NGNjQ/prICdq37ByPyLGYLkVH?=
 =?us-ascii?Q?+T8yX+TQuTnSUjPkB0tqtcu3+ZKWZmtD9PAPb5oCcYGln3Ig87CjNOwmoQ3H?=
 =?us-ascii?Q?gwBN+CY1h+HVpLY7VxuU50+gNc+oUmNjegUlg35JEwsNkgpTLQsPql5iYDhU?=
 =?us-ascii?Q?R0tt10HZFH9oIiWRoefMKHWmRSpUfYDSjYfqz0p0EjRgfWB3KT0N00l7sK8M?=
 =?us-ascii?Q?79XJv6A9Fr2iEG4ZjZPHilMD7JBc4YISsUwb+M9/8c5MRAnDKxnRLEK2NN+r?=
 =?us-ascii?Q?sEGky6X4g9hF2q/HOCRDSy2T7/mhJRtMaxJb4PLXS/76dRGIdS6o+Ukr4fHf?=
 =?us-ascii?Q?gzTHkMXYWIWkbd3OyE6i4I9jMCev18HPLLi1rx+NJNPaFhp6QQkgzf1a3Iri?=
 =?us-ascii?Q?2jXpj5XlM8lJiNjxJXVi7IKfIKH2f/LNMGFIDIX79DxUeprWmzwbPyzmnIE9?=
 =?us-ascii?Q?/SwR623seZgpgXx34jZekISbc9YtnJvdivC0mtPZHbXQsfT2mM6o5Vx/+qhT?=
 =?us-ascii?Q?Pn3uADfnHZa1Ixsx6hLEU1+3RYQm5x5TaBb79Mv9SNSWjQctNyiQ+h+XQzsQ?=
 =?us-ascii?Q?SeydA/Fu1gxFK56cg6KYTTp7h+VRHj2MJPtrLaveIB1cRcHmjzbdeEsqml1L?=
 =?us-ascii?Q?HACFiUp8/XJeSilBlcjhrWDn59dxdWwNe6cHjBZJSWsOCKOwL+nijf1j+Ez8?=
 =?us-ascii?Q?X2KVgYGh5x2M0HiEMVL4OuvfWPVvJcm3C6s34AE3wTmKKN7P8ytzJ/t5dvpQ?=
 =?us-ascii?Q?uyHFOSRNolr5NIof0Z//dQTR5vumZrjcW5IiGTtJDGC9qEBKPbUgfc4GSfDf?=
 =?us-ascii?Q?QWv4u9XeR6dICGlB6UoOwg8+EW0DMBOheY84RjDT/EhtmcmM/vjAG35iQZcg?=
 =?us-ascii?Q?3BE0jsxWvof0AwWTeGz2XrPv0EJoZu1R/gtAHu7m46aajXWoXsKPN4t3u025?=
 =?us-ascii?Q?4xOeugO+DoKEbrkZbUcuQ398AQQ4FvHi7DS3tRjlcLuxhaubjsltYufAEHuQ?=
 =?us-ascii?Q?5iedUi3te2cxw6V4dOHGPYmmQg38Y0it7p0VFL2GnkZsc//zHr2UCgWB5oBi?=
 =?us-ascii?Q?bIVcXVLvgcAWTDsKMEABc2z/Xwaj8yl9nJQSRiEbnF0a53E+YEqdCV9PTlwq?=
 =?us-ascii?Q?rj+pRsZ2Sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FtFW8Zn83AXAZKAC2qrxqxdx4W14/VZOdI7rBq5vTOVzAjDZaDD4Ppwc3aQBerTBelmhkdoqGsvWuWt7Dno8ALo2tFmWGEeOR5k/6qfilVD4jkBtigkH1IMgjGiPEom5jFUHxRmMi+gOh7NXb1STwvViZgtbkPb+s0rflyeSciBuWeO7zz/Av9m4Hiy9Eo7S4n8+9DJ3s/TnaMz+WoKdKlwMDI+wg9okVs730wVGLLZp4arQLMHhDGMB8+NfgM6BZVNsLImzdhJ/fJMawA31au+8E9b2LuhGgTLdQBhhrjj8dTfVzclN5z/0su0EA/vSnARoCoMjzQAeKt8d2IbF9Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8d1df8b-994a-4d9c-769d-08decb884632
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 09:18:48.6745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RTRQTL9HmrzE7btBjm8RdKMn4LNlGEmnpGvRs2+q0fpSEY+mftoDBoAlIf+8zIBQn9uqg1enSpDjE0xfK2ewyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7764
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 120D168D74A


> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 16, 2026 1:31 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Stephen Fuhry
> <fuhrysteve@gmail.com>
> Subject: Re: [PATCH v2 0/2] Unify fec enable/disable across the mst strea=
ms
>=20
> On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > First version of the patch included only one patch i.e the ref count
> > https://patchwork.freedesktop.org/series/167664/
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> > Arun R Murthy (2):
> >       drm/i915/mst: Unify fec_enable across mst streams
> >       drm/i915/display: Refcount for fec enable/disable
> >
> >  drivers/gpu/drm/i915/display/intel_ddi.c           | 58 ++++++++++++++=
++++
> >  drivers/gpu/drm/i915/display/intel_ddi.h           |  1 +
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 70
> ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 ++
> >  5 files changed, 138 insertions(+)
>=20
> Okay, this may seem a bit unfair, since I haven't dug deep into the probl=
em, but
> I really have a hard time believing this level of complexity is required =
for FEC.
>=20
The problem is FEC is a link-wide property: DP_TP_CTL_FEC_ENABLE is a per-p=
ort HW bit, while crtc_state->fec_enable is per-stream.
So synchronization across the mst stream is required.
If not with refcount, maybe with get/put which eventually will be a kind of=
 refcount but different name.
Other alternative can be to add a logic in disble_fec() to check if there a=
re any fec users within the mst siblings and if not then disable else retur=
n. But this only change may not help, will have to remove the crtc_state->f=
ec_enable compare and HW readout as well.

Thanks and Regards,
Arun R Murthy
-------------------

>=20
> BR,
> Jani.
>=20
>=20
> > ---
> > base-commit: c585a0a7e48a48aca80f7c0acb7294c7bf301bb7
> > change-id: 20260616-fec-82a3d27e0f11
> >
> > Best regards,
>=20
> --
> Jani Nikula, Intel
