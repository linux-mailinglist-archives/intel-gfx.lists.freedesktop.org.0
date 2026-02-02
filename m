Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNHbIJT7gGn9DQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:31:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3EDD0899
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCA510E2DB;
	Mon,  2 Feb 2026 19:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJAegt6n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2354D10E2D6;
 Mon,  2 Feb 2026 19:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770060688; x=1801596688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ocD0A1vzXa8SkWqLTUfsS+LD6/hBKYHAFKrpYA/BmsY=;
 b=JJAegt6nL1Hs45Ymd5CzVzUzUMUYwiKYWt6ezDBvAClPU6x+RTJtFYjl
 2f7oUcQGtgsSX9ut2osa1r4K+nwmJU3OxJWXe3NyfZ7TI+bn1p4xhZHtB
 D19vayP8gpWCk82e6IT29Bs3E/OAa3QxlM/ckUGee+L9jSfFb3HVDraW3
 GuvLNEpjBTlgnJRJu3SCnFth4qNRoSzQ7E4WwtADR1GwJIqGOf0EN8+ZF
 E0yAaBBPcBsVuSPvORKc7nRMU7hOGJWB2M1aKTpem8H+bW1uYhsEr/OqV
 r574mJYLVga/EOl7c8KB8+W1e12Em8i3VwM0EpeA5A80uNSnNrDHGh+QP Q==;
X-CSE-ConnectionGUID: VXdaL26xRkaH0ty5Jm77BA==
X-CSE-MsgGUID: hyO8aZlOSEWJPSXAZM2Zsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="88803555"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="88803555"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:31:27 -0800
X-CSE-ConnectionGUID: 7Y4cCrT8Sq+rxOx96Jc2FA==
X-CSE-MsgGUID: BKAaETcERROIpoJqyBbuvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="208715903"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:31:28 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:31:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 11:31:27 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:31:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wUDFBdkdW5wvQDVjtJE99Thv4AQR+WdssJPZor36ieAmZ3M+FZbYHoivmt8XJB/XjxJXWKJkbEn3Zdv0MuEp1CiKX4guW4hEQ5BQesKYegpVEkkJztSgrL7BVqS4407cUq45WSn7M2DuEqTwMFnNXjGG0xw8xMcMPem28CAA112jbb1NgeNHXiYS1bNRulXUq+K2PtZoYHrp3gcShVthmR/dnA+YR6l/0lNWKPf6ccQH7rLINzs8BW2QVOS36YXo/24Rs912sdbAhmVk8Qvuu57XfXmghFnBrJRU321kPjfrmIwqr51B931ujyxAZcfXAtqAsriyotfVxuN1fwyH0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/BHEg50tMkhIMFIqNItk2p34SPANtlejVd7rN/oBIug=;
 b=lym9bdV2Myyy9RefNW2dletIWE46k2pB+6d3M6PskOFEy78/en3E3cWdIUPP7Es0P0vZ7xMkBZAPDcjcy0QUdUc6NEca88LwSApQwkn/m00Ago2apSuB510V5wI/zgY8UyC8uBmtRr/hhrQ897Gqhd71+YxydnfLBABzy/oXDoSxVB03k0k4zs0x+7tJGXI5HYAQUXyc57xJ9rwoubW5qd9fk4FiHWwzJPG2gc1EYwlf2cN/dK87OlUC72XC0p3+blEeBbFSs3S7URNp4XlQ241Jf5vPruEkddSpoxHf6uWwvqP5puFtnPzukux1OgZkR76zUdQBWYZjsEXGLnbhOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CYYPR11MB8406.namprd11.prod.outlook.com (2603:10b6:930:ba::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 19:31:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 19:31:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Brost, Matthew" <matthew.brost@intel.com>
Subject: RE: [i915-rt v5 01/21] drm/i915/display: Fix
 intel_lpe_audio_irq_handler for PREEMPT-RT
Thread-Topic: [i915-rt v5 01/21] drm/i915/display: Fix
 intel_lpe_audio_irq_handler for PREEMPT-RT
Thread-Index: AQHcit1b6yG+l1lDO0KkgFpAe3tPdbVv3x3Q
Date: Mon, 2 Feb 2026 19:31:19 +0000
Message-ID: <DM4PR11MB63601082CDE27CD067F36F45F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-2-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-2-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CYYPR11MB8406:EE_
x-ms-office365-filtering-correlation-id: 7a4c3168-97c4-4ea3-652b-08de6291a3e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?UuSYirOpvAai5Jwg4CV2Tuc3SlZN+cHAOJX3TfBCVoHmf/fUQf0f9wqfyJq+?=
 =?us-ascii?Q?ABb3cFhG23wROqKsFKl2ofPnL8AbBh2vMS1wsy4/BfCC4xKmhIfMCOQdTzZe?=
 =?us-ascii?Q?CwkEkoiDLlhree6D71faPFu9VoG0j3k+GkRXo/DuyzWFn96dEj3zuou0mb+A?=
 =?us-ascii?Q?FZjjfnGJZOcQbb1RQeAfKEUzZs+QDg9Uj5yXqYD0JlcoNXKW2TJWFv/4t+GP?=
 =?us-ascii?Q?PQGaOwZZv38EwsSS8K5HYhNgy5sRM5R3QByacuN2YFRXFOGjK3M8947bRDVF?=
 =?us-ascii?Q?dM+bxYFjHWtorTkTNy1644I6Mv455tTAgTqK/HIAnY8MGal3agFdMtKWFci2?=
 =?us-ascii?Q?j6Uitr/Xr9HytGcshCk9vD9HqzWB0TQTuvpHpPR7DNL8gqX0XM30nmmerxSy?=
 =?us-ascii?Q?+D8creywg/d6UHiq8FDBiIbnaH/xcObphFUZ7r2t/7OyLYScT5Hs0+aWZsA1?=
 =?us-ascii?Q?WzAoPDmlwrJ2/omG8+LGqBSSJayX1CYhqtevZVqHZCDldT9vKN86PNtrlBYh?=
 =?us-ascii?Q?ZKj82xAeKlHC8Bgxc+KqQlfpWDs5G1UzPTQK8UmktklFwfgUMDrHOW/oZSVu?=
 =?us-ascii?Q?yTiYSiWmqk49DTcGtfqzjkIybt9mi+HsJl4xer7HXwd6d4sqX9qnZBbJqa4L?=
 =?us-ascii?Q?S7FFBrkKbVa5ZmzNoYl6HKSiF8DfzJSn894Zd0ov12KnnO+pyaeN+QxvIWgs?=
 =?us-ascii?Q?VQprtr/4AvC4SBcU5BlFu0XI74yWBM0F5miubrGuT02UUK80iw+3yY8ChdiQ?=
 =?us-ascii?Q?uZ4naBp2L6f69MTKdxu3BuMSHJJWeKMP2LAgHmkpIRaEq7tmylFm1TSRED4p?=
 =?us-ascii?Q?VgNzIuv6NEAPGmq4jKGH4Hy8L3Ogpm8NcP29lfKHmavMlG+yTReqhrMJXlup?=
 =?us-ascii?Q?uTgR7A2IBPILEh7D5vB+px82T1FmEwceO9pXF7xXjLDP75RpFgQa0dzk2uit?=
 =?us-ascii?Q?nJdmfKeCjk4268GuJy7bYaSCS6j0P1jjnpr/nFgcQ93Ng2IXAKXGYfiqOfgu?=
 =?us-ascii?Q?nH8Ff2/TERD03E8RiGncGY43WqVZgU9j7+3htYYxuV94GP4deQssXfohI5AP?=
 =?us-ascii?Q?MKLmDT1eHw2PU5xo8jCuB94s0Rxjcutwug1h4ip372Vlx3BFNg05n2/92uV4?=
 =?us-ascii?Q?J8sz3PoboLQzusx0GfxaFkBalMptXUy4d614wgK89KkGS1/HSXBSsDAAzTrA?=
 =?us-ascii?Q?IBKmNwi4N9aijA0zIzYuWwFxsdbMCJN0TPdMQ4QZYZwMfUOtJ+MVr1bd0fWN?=
 =?us-ascii?Q?KX71cnVDses9KrGz1DHs6YB8RL8k0GMPlJJx9goAcVltRuUrq7iiQKzjDnKT?=
 =?us-ascii?Q?k7gnTXbFiFdOuyGhIrhN0LpC5oTq+rzQGqvYB+Xxq66Dq8cLaHnpEFuuYZZe?=
 =?us-ascii?Q?JgBt77Nxhh89RUfsOqGcCK5/y4xCGRYJSpKzjRRmXT+EjnIdP+/rV6JWLnXU?=
 =?us-ascii?Q?yGOAyi+ZaGrcH1Y2YPUlel+IuGRyPH6+E/ZuICJf5sTU7jQIoZm0KCu4wrtB?=
 =?us-ascii?Q?+ZPci9Xl3upcO6uKNp6JutgwoFGtNZpS10kUZofeDceJXsBM6kkoXR3t1tYI?=
 =?us-ascii?Q?1vMZDscuuO2nVatg6ep3BuzTRPdUf7ivBM6pU9OCKntPEldmQKOs/S7vFUbQ?=
 =?us-ascii?Q?GNIX/FIjXmIk1r3pS7xATXQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YxyrFExAyDUvvFKIZokdLbx8797DsuL5To98oCs4ovWeru9G/dDijGs3yiIj?=
 =?us-ascii?Q?TH/+zYhGWtAUafNbAkTJEGDdDvhSnfAxKFlWmtt8zXcRBh/N0UI1r5dBEGR/?=
 =?us-ascii?Q?MxVPiS6YUGVMBGGs1n336Uec39mVXmsJUzY1NdPETAW7nCQ3Shtw46rAZnNe?=
 =?us-ascii?Q?oXjRm1yjl6NmZTpXtZoKdt7gCALPmtfpI5cp4pQIx+HnlJyBBL6H2ef+IOGp?=
 =?us-ascii?Q?0LuKY7GES+jpdE5VUy4Mt2MPkUAfotMOlg0T68rBy714n8WpEdT17TPnU0V7?=
 =?us-ascii?Q?XQTDWB5NPUzb/d6Q0+awLvfKXGyGNbKCeWOjjTHcj70YajbIRmvEFkjtzXUx?=
 =?us-ascii?Q?XojAvI/ktgw5XInDlVQ194gdWAevKiOfZE+lDBYXYBIb0mRyUu/rMQMoap6a?=
 =?us-ascii?Q?AeOw2sGLRB1lctytybjmW8XzPqu40dNmfwdGn/ZRpk2SOeAQNdf6J3oOkXQe?=
 =?us-ascii?Q?RtsfXxsI5uKCJv2WeYzXd1tbjudBJqd9X3MJjVh41E9bqQtal4wySCsbkgbH?=
 =?us-ascii?Q?f133FHg0Y7fm5EXS8fXQzYtNrxr5fkPgyVWC1GMWgMMi2ZTTSlNWuenghmjs?=
 =?us-ascii?Q?uS/G96pE326IZSK5cFal+SylVIBClNe2KOOFyZV2tY5VJaCpCwFLf6BCmRwF?=
 =?us-ascii?Q?KY9cm9ttvQ5pErlS0W1EUOl3TY/g94mgbIMr0wf5LGaBsP3E0U98qZ+Pmwxf?=
 =?us-ascii?Q?LG9H/WOGTIWuaANbLB6oKPbO2zgqEV58ZnVbmqHqsBBjX53u/btQaLa+FBEO?=
 =?us-ascii?Q?yDBoy5LMYNvFqqFSKs1BqWrjW2yRhi/Z2d+T1hpkkYJELwM8ykRZyIDU7Jil?=
 =?us-ascii?Q?PjchIA7jKw6NAdqnbU6gcT/4vokBKxeh56IY5163iOLlvu9qGMx/eIYwxsXx?=
 =?us-ascii?Q?1VEZCsJd3oL/SJIk38CQXI4kfIxvZZcqNxEDdrbMslbeTOQUQhdiUxNiKJTy?=
 =?us-ascii?Q?Tc9ciR2JFCQfGgID1gnSt6PBH7PnKv/9HxjxyBLZqfE2dUwTX7Jo++yWmxrG?=
 =?us-ascii?Q?gcD5dYvWDZjk+rgWYddJ9xvfVABhPix9NC4FSqutj1sgNj5jw2s1veOkiI1v?=
 =?us-ascii?Q?jHTDk6UtTqThTN/WidgVEdzJarJcrHUSGB4DSvdBSZq/BmKyy7r6ybljiF3K?=
 =?us-ascii?Q?YbZxt1Dd3tKhieIm2jmKucf80KiuDTPJziFQc8ybc1dAZV2M41EVkoVEj2R2?=
 =?us-ascii?Q?Gkiv3c/+Qq5Dwc5z2xRrV336SnEGm5ffloqujjq56l4FPzOC7zJfgVXfHExH?=
 =?us-ascii?Q?PPrqBnlgFuSFHVBdMjw7R957pHohLwDi/Gc5Ls8aF57fMkR7CEz3yqGybsmF?=
 =?us-ascii?Q?KJ1lhS0lm5zLL/jjz/KIudkmLZ6AEx+Lt7J22rflbqtss4QYbArhTE3okXHU?=
 =?us-ascii?Q?RFshwrUDmQJ8PaBi1wOQmJp7G0CsC/3zsf0PYuiFvbQD0pCPCBLbDs8qE18T?=
 =?us-ascii?Q?9GVZFKQq9CzrvRJpXjpkN1jO/zL1UHWsBwKyiz5CsH8JR39CRve2C3xy1s2X?=
 =?us-ascii?Q?ehQB2aBs9uxPJNsSb1v0+qpfD7qF+BBCfJFCFwAxSuTdS16zKmBSbaNe7sz+?=
 =?us-ascii?Q?cLTc692zB9nnwhLSV0P5+CgSvIUAP/STdXBiDFE7TI6UdK4JS7vBOzcZ1ind?=
 =?us-ascii?Q?G3olZ1G1mf3qVUI/dEs8vrUI4jcLIVwXa6pYlAcERgFwRa0axBOrIHqCjkEX?=
 =?us-ascii?Q?9HedACGGfGA5KkGZkFHQv8DmfbU5TOtchvqmdgr9a4G0XdxvOGJi8aA9+1KS?=
 =?us-ascii?Q?c0ugoIuypA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4c3168-97c4-4ea3-652b-08de6291a3e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 19:31:19.1867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hU/EU97cVdww+F2Gkym2/e/PP4eygRqvCSwIvi2Y3Y5/IY/JRf4xhdetjBW2buyW8YkFBoKBFJ5HmldkYbsh8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8406
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9A3EDD0899
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>; Brost, Matthew
> <matthew.brost@intel.com>
> Subject: [i915-rt v5 01/21] drm/i915/display: Fix intel_lpe_audio_irq_han=
dler for
> PREEMPT-RT
>=20
> The LPE audio interrupt comes from the i915 interrupt handler. It should =
be in irq
> disabled context.
>=20
> With PREEMPT_RT enabled, the IRQ handler is threaded.
> Because intel_lpe_audio_irq_handler() may be called in threaded IRQ conte=
xt,
> generic_handle_irq_safe API disables the interrupts before calling LPE's =
interrupt
> top half handler.
>=20
> This fixes braswell audio issues with RT enabled.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 5b41abe1c64d5..172c0062237eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display
> *display)
>  	if (!HAS_LPE_AUDIO(display))
>  		return;
>=20
> -	ret =3D generic_handle_irq(display->audio.lpe.irq);
> +	ret =3D generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
>  				    "error handling LPE audio irq: %d\n", ret);
> --
> 2.51.0

