Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCV3EdFU3WkFcQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:40:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E30E3F32A8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D29110E055;
	Mon, 13 Apr 2026 20:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLHJIhgp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DF110E055;
 Mon, 13 Apr 2026 20:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776112845; x=1807648845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=shineMJ+iZ0uC5FqoCmTGIHRA3ARePgYzCMQ/T0aB3M=;
 b=PLHJIhgp+9gSrapB4sZH+LSNaQrtGJPVawrR02xUP0UbHe1HuzGm41Gp
 muw3BW4CIT2JQYFXTxcE96ggkx7Ev64uzdL45q/bXz4uS/A4uMuxZifZA
 oic8zdKY6EfTBWAMCcKBCzscEbqLBSkpsWC3UNULLruEJrYtOZSlinFdh
 gEm4lzCweZ04bLrRC8i7Rj4B+xHF9yG6TV2bWTXriz1ImMqWV5McBCSav
 CWsLsKj1VL1+vc3Fwns3rdy0zk1EDngsqIpoGMvjdBwrbKPHYOe5GlXXV
 xqF3FX7wemeyAn8d/qdccx2XafcghpU9si9OwpdDxnmdFV83mMRstNpMW A==;
X-CSE-ConnectionGUID: ozXeYkxjSxmQGjJ+GsM3EQ==
X-CSE-MsgGUID: 1cTGLJ8dRV6nMLsR/fyR8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77024133"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="77024133"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:40:45 -0700
X-CSE-ConnectionGUID: oaXVJMAXSkOUfMqrj1HUCQ==
X-CSE-MsgGUID: urZWbvUiQ7aYHeShRC1nGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="234866902"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:40:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:40:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 13:40:44 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkTsy7cd2IlXpZnZywwXCK8w8+0I2qbfB19M71OowzIinX++Cri65vpuQGKr2BMZXkaUT1zXgULBUWkDR9oogbk0TVkz+miwGHfuyh9ToOIAHd6uxwBQhpjaBAK92y2zlWOttgqsCdNXRtG5FmuKe98Su/XtqdGew4IUc1Q+DYJ1QFJHiseSjVWr3mo0Jn8Ohuc5iLcVVyDYuMyNBbUmtm8L9+6q3VMS11Bx4w/K1752/h4A4Jnuxk4iniJtKL/gZtG7jmYBeNtl1IfsEOt9HRcfsodR/F3Nxsh6cQj3X1rVP9J4u17bwIQ0rnnH6id6au7qXqzcMEzlHcdx91q2/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hk7P+a9Y1slKAAqpF8GLRijdcUvH25mHgS4cfiJW4QY=;
 b=ctZZ0bQgZjUawcIKhBltdTtyMXjdVHzf+BSQMnVqxtEwLxhuiD3C+/IuKd5f2UJ2rZJxvBxbGA3+8Kwjoym9hGmmEDMhlagKjR2hzyiidleo2lNRUR3D2qfzsHhzp4JzfNQdt6Q3IdpvR8UauvWfpEKD4Zjzc+LEH4xXMxhY6wgzEGyZSkECTX+8n5sLXfW70mPOCayEAlHdAkkqVLy+UwHgqcGUo9EEb39NsaV3YPkRI8y0w1YOUVGPD5pFIRg18oD+CWfvQrKz7j4A+BnzocJ3B1nVzWtJivyEifxvKJNJ4Lc81vDPNlFDz+HuZ+6lbIQb6/qIJ5oeDXduMRPvMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB8504.namprd11.prod.outlook.com (2603:10b6:510:2fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 20:40:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 20:40:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 01/19] drm/i915/display: Remove TGL DC3CO support
Thread-Topic: [PATCH 01/19] drm/i915/display: Remove TGL DC3CO support
Thread-Index: AQHcvUQkFCGH4Ee270KCnh7D/PbADrXdkDPA
Date: Mon, 13 Apr 2026 20:40:40 +0000
Message-ID: <DM4PR11MB63605DB556EE3AD45279CE7DF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB8504:EE_
x-ms-office365-filtering-correlation-id: 82051f2f-8216-4199-d66f-08de999ced73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: b99GOZQ4lOZEnDSftrJXXUaZOTZLEG29QSSd2hIYcmV463L48ug8rRVm3JbBjcaBUQRXFg9J5icX1DOsWaWRa85YfZ8SbicFF5pFxbhNexd4eCM62Z8y/LVixFqQL1Nz8EhfEIJB8YUGXa8FEeFYlVluNmDt+RE71g+9yIjvM1dzlo1qtNFDADI2krb+RJyDwGwj7T9l4PczfXdhwzqsiAaegOWF2aCKVZasUth98Tuit7ANymGhGOvzzpXRnxLgm8hwnsWzA/deoZdGwo5AVivaXayWBDn3YFLDdi2PaclOsqswHQmKAELseV/qfZudd7ZAilW4o1ZGxF4eN7rMnWzoYzPJBKJIkC2ubVOE2BeAlWmggk0QQEFCQbrEvNCQqhjdorQ/LUECH2aghQlKpExoBD2szzrAeWqBhxvIA/PBebB/JM0RlpcYNvhWvs1X3L7nOwGFidi3mWs05pEEAuK++7p4eyHq8NZcf8WmUmDcaP+0TicVU8aqLrS8QT9GpGF86UCPDz2jsv85UeOVSi082krz0EI+uFuKLNR14mFDQqdz6w8KwCyDSa7SYQKMbHYKaBGlr/gGuyTn4VXdugDsh0wszdEZHWmNa9QtkbrCG8OUf7Zy33d9DEbt3ZmGm3jl8YVVxm2hb7XHNzi+Tj+Z80T1mZHL/wJyMNAsl3q3UAkVH9MtfISwbR/ItV+TyHmzV6dBA+/UeiAl5HYsHmij2bWL7UR9VsQUgPoNQlPFicjpPxNDU04uKItsYaRyCaCJ113fjQaiJHpsaxkTfk/47JS4LjlmYJeKaCPyR4E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ebglNlrdHyaB5Hy3e389IKOh65JdLdKYrygsjUTpQtXiH3NFPrAEXB+rk16q?=
 =?us-ascii?Q?qiKQ2dR9TcWNjix7Y74NUEZUHO0FDqS5DEK1lVJbxUo6+dtv3xnq1GxV+Rzr?=
 =?us-ascii?Q?R3F93sigoXhRcpJxl5xvUrcrWrMc7BwcBN8twQGWM1nYJrYAP8eHR3igQ2c/?=
 =?us-ascii?Q?ZZclab837vNwRgxEfxsfuQ+n0zd8+I++bHQFi4y9FD3TPFMAXlpcELpdeAnI?=
 =?us-ascii?Q?6qgDiqGq+y53condliMVqiIFZ4jPA8S0TBiqB/0UM0YYRBQraYAIOfbCf+VL?=
 =?us-ascii?Q?+8p3+I473khyiSTdXx4vaTP46q8g5SYvXmBv/AtUd9ZcnL2NaC7P4KEjfLTF?=
 =?us-ascii?Q?Yx4vH+39EXmCd3E4b/7nESlhYRwpMnNb5NR7B0qb5MYmfmBzwOu9wAcyRPTW?=
 =?us-ascii?Q?ENdVndMUz9zsuK1GtMwoysVYfkezlWsdukKhMlXOcH8Dfnd7UjOKrv3ohzNi?=
 =?us-ascii?Q?8ZYafg0SqHN/xpcFvgI5A9Ei1Mt8nUbDJlUeg1MPKUp3AnCgSM0szSa/TV1E?=
 =?us-ascii?Q?2twD9DK/ZT9Y1zz+FBGeKXQ/NoE+8GGfke9sDjKu165WYsqJxSE1McB/Cm8B?=
 =?us-ascii?Q?vLBVK0a4DFg6Yduagqxt1feVzRILMp/4a9vBitzMoSg2cvd42bWSEnHDIeus?=
 =?us-ascii?Q?K3hiKxvXwGOUt+f096F5rdeZAXgu5EoBXQCgPyoDdbSX8SPNADvPS5+UV7jf?=
 =?us-ascii?Q?JrreY7ewA0uJbiVMXcAvHv8+pblI2ExnR91yDBJOYVMXEg/9wbTjexBE+gc+?=
 =?us-ascii?Q?+j96tm9Nbesg/bJmb+5C+T2+IqxEvOBk+mjel6KczjwpJCYteNcIKV/UY2N+?=
 =?us-ascii?Q?Rj1qDPGexmXfmC/4ibeqG5gpXzr+o/TSce+UPIpPtdxreL0WkN1EaS2RuKsf?=
 =?us-ascii?Q?U7FBzaFTSZX2ZI7DQcdUSC/A9nthUatSosSvWMdEcqZgfOwNLxFQMBftFOhV?=
 =?us-ascii?Q?3MmxUJyGVB76dmwpTxxlmDwp7JORiWWgMSeDjBZ27JyVv+HjgNOSVusqFavN?=
 =?us-ascii?Q?KpC36O4N73Pa5im5zcxSf2xwTI543yApSXiLTuBZxC3aSj4r4ZsbVUxQ/EnX?=
 =?us-ascii?Q?dObowAJxXHEWXteWLScwlA83wnSLe8nvHMWqf3YDdWhIlHU91y1Lfoe4SlCu?=
 =?us-ascii?Q?22bTOdPezfP0qvOc7gWoTSk2I91sfeHib2ejI7p5m0RUhubeHffCS5MwBfTu?=
 =?us-ascii?Q?hX3CvJ63uKE6Z6ypy0g4ShlhDsyDeh/QkPVzdCKu64QTtRDX4uQnB8TM5sQY?=
 =?us-ascii?Q?/xQaaupfTAE25YBSAx4DwP9BvaxtFNHHjRZSAn/gNpK2RnxcL8SLlf0qiSkE?=
 =?us-ascii?Q?Pf1PviEbvgPxtb6xLl82JzmisR5NC2EgTFSF93eFpJXEfbTIbgTi8RtToj1V?=
 =?us-ascii?Q?KcuFx+OHj9nQEjYLBoZTsq84aRDYME1H8+qDYYqG9HwFtxYl+Q+PG66+iEYo?=
 =?us-ascii?Q?sV5VUDzQOrMMjJE3ZEBSdia3rg/GMBJl+qbPzs4hfR+O5B5/mZrOGtrRwBtX?=
 =?us-ascii?Q?VNgAwb9OczhYlJs+fsHIu5kGBx68EX4gy7jmRStX8bamzlgEh5YXFe4pIsil?=
 =?us-ascii?Q?fSPT7goGtJOHCGBdMR1P1r9X4H6hYP7Tg4qt6Ke3rsjUt7Se3wYXy9v6Muw5?=
 =?us-ascii?Q?FVcewl9TxrndP3x2c5Mav9TPB3Ft3O6wVfnaI5XlCeTGZ6YjEuEYAOqxJlNS?=
 =?us-ascii?Q?nUZ+LRWxiXTxiFogO8f3dZWDs7eHk4IUNZ67/JpVCa76PedyhJ49ut4tsZsJ?=
 =?us-ascii?Q?3+pT4rB9/Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IpbU2s6DQKQboRtnYt0N8RsirglMOWoyf0NIuhDbT6ICYHA0vIrMFhHxsJj1IXWrj38QhHYSECc3gOS81mVjlbaZh5xIXCfUHnEqtJP2bNNU9bhJEElmi7yJxXSJdYof0jkP1hcYgZ/5zptc3b2RcIciGeTeEKUwaxHRS++pFqbGbZE3MbGwxbZqCW0QBZtgey2uyMLvJy05H+ocuE+7s8/ouNcyp0IcU7sPVvdrvEmg/nXJTIr2ePC14ayY+lNRTzOF19MzNzzTkR6gbQ1JT/XHdetxf7tRsxYcpBrMhvjuuCJApYan3NkWE/5K3Vn8jrozPhoF4uBnyT33ry0XMg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82051f2f-8216-4199-d66f-08de999ced73
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 20:40:41.0646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dtcLc53dyOpsQR06/XC6nYgyM07rBSTMDW97KQxMGsoJkTSFxoZQ/3uS/Hhsgqg8UKEl4cgIkb/5CDIeHt0gJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8504
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9E30E3F32A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 01/19] drm/i915/display: Remove TGL DC3CO support
>=20
> Remove all Tiger Lake DC3CO-related functions, as the feature is not enab=
led and
> not used. The existing structure members are intentionally left in place =
and will be
> cleaned up in subsequent patches.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   |  25 ---
>  .../drm/i915/display/intel_display_types.h    |   1 -
>  drivers/gpu/drm/i915/display/intel_psr.c      | 163 ------------------
>  3 files changed, 189 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f855f0f88694..6d5f07f7f590 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -867,23 +867,6 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> -static void tgl_enable_dc3co(struct intel_display *display) -{
> -	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> -	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
> -}
> -
> -static void tgl_disable_dc3co(struct intel_display *display) -{
> -	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
> -	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
> -	gen9_set_dc_state(display, DC_STATE_DISABLE);
> -	/*
> -	 * Delay of 200us DC3CO Exit time B.Spec 49196
> -	 */
> -	usleep_range(200, 210);
> -}
> -
>  static void assert_can_enable_dc5(struct intel_display *display)  {
>  	enum i915_power_well_id high_pg;
> @@ -1062,11 +1045,6 @@ void gen9_disable_dc_states(struct intel_display
> *display)
>  	struct intel_cdclk_config cdclk_config =3D {};
>  	u32 old_state =3D power_domains->dc_state;
>=20
> -	if (power_domains->target_dc_state =3D=3D DC_STATE_EN_DC3CO) {
> -		tgl_disable_dc3co(display);
> -		return;
> -	}
> -
>  	if (HAS_DISPLAY(display)) {
>  		intel_dmc_wl_get_noreg(display);
>  		gen9_set_dc_state(display, DC_STATE_DISABLE); @@ -1115,9
> +1093,6 @@ static void gen9_dc_off_power_well_disable(struct intel_displa=
y
> *display,
>  		return;
>=20
>  	switch (power_domains->target_dc_state) {
> -	case DC_STATE_EN_DC3CO:
> -		tgl_enable_dc3co(display);
> -		break;
>  	case DC_STATE_EN_UPTO_DC6:
>  		skl_enable_dc6(display);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b4c3d8537a99..6830f911d94d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1784,7 +1784,6 @@ struct intel_psr {
>  	bool panel_replay_enabled;
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
> -	struct delayed_work dc3co_work;
>  	u8 entry_setup_frames;
>=20
>  	u8 io_wake_lines;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5041a5a138d1..29900576e117 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -85,22 +85,6 @@
>   * issues the self-refresh re-enable code is done from a work queue, whi=
ch
>   * must be correctly synchronized/cancelled when shutting down the pipe.=
"
>   *
> - * DC3CO (DC3 clock off)
> - *
> - * On top of PSR2, GEN12 adds a intermediate power savings state that tu=
rns
> - * clock off automatically during PSR2 idle state.
> - * The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 dee=
p
> sleep
> - * entry/exit allows the HW to enter a low-power state even when page fl=
ipping
> - * periodically (for instance a 30fps video playback scenario).
> - *
> - * Every time a flips occurs PSR2 will get out of deep sleep state(if it=
 was),
> - * so DC3CO is enabled and tgl_dc3co_disable_work is schedule to run aft=
er 6
> - * frames, if no other flip occurs and the function above is executed, D=
C3CO is
> - * disabled and PSR2 is configured to enter deep sleep, resetting again =
in case
> - * of another flip.
> - * Front buffer modifications do not trigger DC3CO activation on purpose=
 as it
> - * would bring a lot of complexity and most of the moderns systems will =
only
> - * use page flips.
>   */
>=20
>  /*
> @@ -1178,108 +1162,6 @@ static void psr2_program_idle_frames(struct intel=
_dp
> *intel_dp,
>  		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>  }
>=20
> -static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp) -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	psr2_program_idle_frames(intel_dp, 0);
> -	intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_DC3CO);
> -}
> -
> -static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp) -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> -	psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
> -}
> -
> -static void tgl_dc3co_disable_work(struct work_struct *work) -{
> -	struct intel_dp *intel_dp =3D
> -		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> -
> -	mutex_lock(&intel_dp->psr.lock);
> -	/* If delayed work is pending, it is not idle */
> -	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
> -		goto unlock;
> -
> -	tgl_psr2_disable_dc3co(intel_dp);
> -unlock:
> -	mutex_unlock(&intel_dp->psr.lock);
> -}
> -
> -static void tgl_disallow_dc3co_on_psr2_exit(struct intel_dp *intel_dp) -=
{
> -	if (!intel_dp->psr.dc3co_exitline)
> -		return;
> -
> -	cancel_delayed_work(&intel_dp->psr.dc3co_work);
> -	/* Before PSR2 exit disallow dc3co*/
> -	tgl_psr2_disable_dc3co(intel_dp);
> -}
> -
> -static bool
> -dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -	enum port port =3D dig_port->base.port;
> -
> -	if (display->platform.alderlake_p || DISPLAY_VER(display) >=3D 14)
> -		return pipe <=3D PIPE_B && port <=3D PORT_B;
> -	else
> -		return pipe =3D=3D PIPE_A && port =3D=3D PORT_A;
> -}
> -
> -static void
> -tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> -				  struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	const u32 crtc_vdisplay =3D crtc_state->uapi.adjusted_mode.crtc_vdispla=
y;
> -	struct i915_power_domains *power_domains =3D &display->power.domains;
> -	u32 exit_scanlines;
> -
> -	/*
> -	 * FIXME: Due to the changed sequence of activating/deactivating
> DC3CO,
> -	 * disable DC3CO until the changed dc3co activating/deactivating
> sequence
> -	 * is applied. B.Specs:49196
> -	 */
> -	return;
> -
> -	/*
> -	 * DMC's DC3CO exit mechanism has an issue with Selective Fecth
> -	 * TODO: when the issue is addressed, this restriction should be remove=
d.
> -	 */
> -	if (crtc_state->enable_psr2_sel_fetch)
> -		return;
> -
> -	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
> -		return;
> -
> -	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
> -		return;
> -
> -	/* Wa_16011303918:adl-p */
> -	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
> -		return;
> -
> -	/*
> -	 * DC3CO Exit time 200us B.Spec 49196
> -	 * PSR2 transcoder Early Exit scanlines =3D ROUNDUP(200 / line time) + =
1
> -	 */
> -	exit_scanlines =3D
> -		intel_usecs_to_scanlines(&crtc_state->uapi.adjusted_mode, 200)
> + 1;
> -
> -	if (drm_WARN_ON(display->drm, exit_scanlines > crtc_vdisplay))
> -		return;
> -
> -	crtc_state->dc3co_exitline =3D crtc_vdisplay - exit_scanlines;
> -}
> -
>  static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  					      struct intel_crtc_state *crtc_state)  {
> @@ -1622,8 +1504,6 @@ static bool intel_psr2_config_valid(struct intel_dp
> *intel_dp,
>  		return false;
>  	}
>=20
> -	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
> -
>  	return true;
>  }
>=20
> @@ -2071,16 +1951,6 @@ static void intel_psr_enable_source(struct intel_d=
p
> *intel_dp,
>=20
>  	psr_irq_control(intel_dp);
>=20
> -	/*
> -	 * TODO: if future platforms supports DC3CO in more than one
> -	 * transcoder, EXITLINE will need to be unset when disabling PSR
> -	 */
> -	if (intel_dp->psr.dc3co_exitline)
> -		intel_de_rmw(display,
> -			     TRANS_EXITLINE(display, cpu_transcoder),
> -			     EXITLINE_MASK,
> -			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT |
> EXITLINE_ENABLE);
> -
>  	if (HAS_PSR_HW_TRACKING(display) &&
> HAS_PSR2_SEL_FETCH(display))
>  		intel_de_rmw(display, CHICKEN_PAR1_1,
> IGNORE_PSR2_HW_TRACKING,
>  			     intel_dp->psr.psr2_sel_fetch_enabled ?
> @@ -2258,7 +2128,6 @@ static void intel_psr_exit(struct intel_dp *intel_d=
p)
>  		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
> >psr.transcoder),
>  			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
>  	} else if (intel_dp->psr.sel_update_enabled) {
> -		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
>=20

Nit: This leaves a blank line

With above fixed, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  		val =3D intel_de_rmw(display,
>  				   EDP_PSR2_CTL(display, cpu_transcoder), @@
> -2401,7 +2270,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> -	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2432,7 +2300,6 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> -	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -3568,34 +3435,6 @@ void intel_psr_invalidate(struct intel_display *di=
splay,
>  		mutex_unlock(&intel_dp->psr.lock);
>  	}
>  }
> -/*
> - * When we will be completely rely on PSR2 S/W tracking in future,
> - * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
> - * event also therefore tgl_dc3co_flush_locked() require to be changed
> - * accordingly in future.
> - */
> -static void
> -tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuff=
er_bits,
> -		       enum fb_op_origin origin)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled =
||
> -	    !intel_dp->psr.active)
> -		return;
> -
> -	/*
> -	 * At every frontbuffer flush flip event modified delay of delayed work=
,
> -	 * when delayed work schedules that means display has been idle.
> -	 */
> -	if (!(frontbuffer_bits &
> -	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> -		return;
> -
> -	tgl_psr2_enable_dc3co(intel_dp);
> -	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
> -			 intel_dp->psr.dc3co_exit_delay);
> -}
>=20
>  static void _psr_flush_handle(struct intel_dp *intel_dp)  { @@ -3682,7 +=
3521,6
> @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> -			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
>  			goto unlock;
>  		}
>=20
> @@ -3741,7 +3579,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector->panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> -	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> tgl_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

