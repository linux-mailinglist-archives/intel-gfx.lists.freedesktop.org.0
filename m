Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COLKBMV+lmlRgQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:08:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8101515BD5B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D5210E668;
	Thu, 19 Feb 2026 03:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/jBh/tp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F8110E660;
 Thu, 19 Feb 2026 03:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771470530; x=1803006530;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yyVv2cK9AFswD22oS5IZHn7L6Qw/kB7c+H4qN5xujWU=;
 b=X/jBh/tpIJmrgwGjGrCZlBm0nob3gEwPcrTomluzCwRWiiRUkUM1uVrV
 XfSGg9SqbxQG43KXOxEmqlDIOi5m/jqLPEJ0WYDANgH9OLw4eWwHse4LM
 /tz9IKWHKKIROfV0Xdu7jPHx80AZHL53KJq9QfbOBjVR9TjeV416q5u/K
 n6K0IezQl3u3zzZ/7gYck1sE6IjJiDcb7qmUmPMy546GKyuAo9EY6w9AC
 4xrQdpT8VQlTa4+ADikhgBo8exon5RuPaBM4S1RcKIC/3EYglXrQkW38s
 kBFWBRW09REuCxlNXAGbVAEyddy5prgDCGM5oseXEk9wxN9aOL9IaGFr5 w==;
X-CSE-ConnectionGUID: +Lx7JI1uSn6N82J7dre3XQ==
X-CSE-MsgGUID: 71AabU92RQa2C//68qgQrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60131112"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="60131112"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:08:45 -0800
X-CSE-ConnectionGUID: ckeK0idgRyWzloTg/y8oFw==
X-CSE-MsgGUID: W0ds4vL1QHCmsuu9iGSmrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219389771"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:08:45 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:08:44 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:08:44 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ldl80VU/zM/MCJ/vK3x6eWluAU/d8L56b8eJU4z7svOprYe1DQKh5vVra8rMaGeJqMi40MdC7t8hCdR/rOO4cc4k3E4PVpWIutT27OtYX6BUm3bw0DGZYLuRB8kJXf6uYwugB5S6kxHqAcOVYd6BlAzpl5+2s/4xOKY3XfbOXjxzMheQrS3q7OWalBDq/impb48AIJjSNnPDHGySN4YvKrlbYOdqB7Q1GCofpwIhcx0zlaiBmRFl45ZZzfHwrvbdzyzg9Tmk3A5GsNvuOg3O3x776Yyypj8C63a/Mv6TeQqMyxA5F9HC0nT81umlz/wjRtgjO8TyT3ZfbTXwiqgOMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PD86OON9u+YjmNxwf+2XLJ46IeWcya3qB7oFdI1dTi0=;
 b=v1Mwgd4mCsA8tKbgAMihTLuJAS5itpdJNJ10W45VKAT+rddyt6Vv46YyeA6kmXzrbdm1KN1GwnW/I4MsG4qQOf8GjP5tdlcWAOufewBsZ0bzCj2fCzbcxtc6mPf2TGTU6u085Qn1GWIQOYrNkqid8xgnA8BEM3+mCRkDM/ScH2Dr5ar7VZCM6KuippSN/SgFRf/DyvA2Yn5io79S8Z573lmmRRhG6IT/SXjLq16/9Ujr/GZHkpvhHP+/g2EhAWbKV1yillqSx+7lsg2A9R8+alF+J3F1XCb7q3vUz/6ZmkxJI8bga3dEJI/hJx8pTMKDkUGyna2TDHDI7FCEkK+fAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9255.namprd11.prod.outlook.com
 (2603:10b6:208:578::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 03:08:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:08:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 08/19] drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks
 hook
Thread-Topic: [PATCH 08/19] drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks
 hook
Thread-Index: AQHcnOTYxCJgsl1H6UGkESTu6EK4b7WJYC/g
Date: Thu, 19 Feb 2026 03:08:41 +0000
Message-ID: <DM3PPF208195D8DFA8482F5E8C7EAE86464E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-9-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-9-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: f0b3c862-c0d2-4b8d-61af-08de6f642fa4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?uxE53I2nEU6vE738nouOU5YtAP7C92Au5V/Rf4OcHlzQpojhGNLqnKB/WELO?=
 =?us-ascii?Q?OVzb9eZ7pWbxYGxNoUIimtIPJHnsIZZ8wbcIKfSvaJqU7e2I1k7O010aWco5?=
 =?us-ascii?Q?C3T89dyNydZanrDmOciElRzqfnS1oU+ROqEaqK5spX3p6tqU0+rT7NhxnqHg?=
 =?us-ascii?Q?VMP8aHQi4oG22HEMlyYEuq8Iqu93RVBB1sneasGkfkM94uZBOwfnz4ZdfNrL?=
 =?us-ascii?Q?X0hIJfcY8VFzmBibYlbQurbRQCy51mnJE8ly0MPNH9I7vvAHGA6nMj4Oh31l?=
 =?us-ascii?Q?CYqAzHvd/bLipc7H8HpPyyJlSQRQQ2lXUE84HiOXYuagf/3fa5M4IPrDbZiu?=
 =?us-ascii?Q?YGZV6dGvriarxKXlLoexuxc6DuVSRi00DfnrUWXL91Z5LBkt7JlBrYv/cHWl?=
 =?us-ascii?Q?q/dvuHJQGDTvRX0kh5hHmib4icNZD2Gf15m+ZWypBp/lLWI/dKZix8YB4obu?=
 =?us-ascii?Q?6OfGfypS0QEUR0Q9kSND4VyI6viQC9t+GOdBSrYpcdrvLeZVxNzw7md8E2i6?=
 =?us-ascii?Q?kAkdt80H6DZCnvCVrjjV3VibStxYux23aZvTKthKRUncSCz9XyIX6gFigvo7?=
 =?us-ascii?Q?Y+vaYiDf2OIibuLTiBZn+S2wbc/NZEvptosKtqP1yA0hIdmzI5vsQkvt8WG/?=
 =?us-ascii?Q?SWYuqz/UE+wlhs8xzQ3yPp4AfXNyQ7yFVogWQNgxZq5O6YhIwg59vluUEL7+?=
 =?us-ascii?Q?b5I3jlcrlIYZ1PKx82CFll/9jmh5ehNenguEhe5dKIN0fEYDHT5RI5Ham+Fw?=
 =?us-ascii?Q?9oo5uQBkUFUL0UfOnmUhqfC7Qt5oJ37Wa25u3G64gusLCLxc8T4puTww6Mo4?=
 =?us-ascii?Q?qssJlbRSr6+D1EfNTStZs1NMQFb+noJTkfmDZv8Ygjbw1gpnljbS0WUl8m+L?=
 =?us-ascii?Q?z//Usl4aIRvnsAsq2bABFd+97N8wlFmIH1g1dPfx6lmBy8RhHFGqa1UD2pNj?=
 =?us-ascii?Q?xyWFOfvatucdh0SRwsQ4oQoQsSOj/1DzXd2EbINThehPpVrjdpjFFa/Drb8a?=
 =?us-ascii?Q?AgBAvutggeDeGV/A8ZNJIgZcZirRkpL0Zl5IlTqmGsh/0LxsgVifQIsYvrlE?=
 =?us-ascii?Q?po5WiagwNWOg9vcSKwpN3J32eKg0FXSX2OYUS9Swi3QldV7d1/lZylMpHvyL?=
 =?us-ascii?Q?bCPbfqwnxJZ7OL2r2PURiqLme4cJzxK/pjAbFGleKjit4+2UPP7dGGa5oxul?=
 =?us-ascii?Q?rka69jm19yQgVltx/v1fti2jNT58FhmWJYO5nXGPRLVrgWN/sMDMWovQY/fc?=
 =?us-ascii?Q?8Xl54jR3J2X6VHDFUL6IQci5GxcxnOfeAMEQi9iJF/ZCOjdNuYTJyiscNNJA?=
 =?us-ascii?Q?QjKDjHCIo5gF1FwO/R4hQBmtRkzFn7xXboaTmlpO3rp7QWv4y7nWuSZw9XZi?=
 =?us-ascii?Q?MwF+fUODhSXEth3FnAD/7wntKni9b3z3BgyEVJ0HaCCh4yBY+wMGONsxB3x3?=
 =?us-ascii?Q?qTpo0mx/XQN6v4DBZD3BG6bvX/As7WTRPfTyIIDzaJbAfg9RAo8DTn+9t0Q6?=
 =?us-ascii?Q?7Zu5hBv7da/0axywdi7yYw2jLt/rQPS7mYK6r8pGko8ojyykGBJCeyBr1rHh?=
 =?us-ascii?Q?K/FMLOiQ1v/X+udqmunC/lfg0jykOraM6TiUqTSdquGfm9/OjPSQFJSawVdh?=
 =?us-ascii?Q?4lbj/RJkHqSFv0MEuM7RW5Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GtFjBzWj6ZdqBE0RMxlCo/1J3rtPy9YlQnIvHLA4KjLZfs25TC7A0q/69Fig?=
 =?us-ascii?Q?lmH4GwFrbMVeQKiRANY4yv3glIW1pvnDeQlFv1aUHOF/SEAirgZKjiD0sByD?=
 =?us-ascii?Q?308vn0UJ5NcuSCpJ6IF4DU0sXAKVDFXb/sZ3eWKEya33GWcbfMOIKczVKDoj?=
 =?us-ascii?Q?kde2KdjKYEolOqlt2PiUYqsqOVonOw3WWBvEo3f5FXyufLQCgelJtv8VI1u5?=
 =?us-ascii?Q?EHiVbHYVmvYARQ2RVueogU0aj0rO4SsXsQ2jvBwE63NGVYhGK/2Aynms/fby?=
 =?us-ascii?Q?zXZI3jMNqWHDpMVUQ1d/aiVtF8b9HPrXwAfCBu5VmHOPag2VOv0cN5WJ04OS?=
 =?us-ascii?Q?tqPN0fqyLiYH2TYLTLJfG0Mc5zPBB4VNCUspvCpOGqIzXlP+VBEW5Xv5HvJA?=
 =?us-ascii?Q?VQX+HV4sEmPpeZHESfwFgbPMgEUhwTe2SWp5ASK8WQVXq5/Xxz6oNIylPDgw?=
 =?us-ascii?Q?vjc+F3GJIb+DKdUgXIhRzvevoFWSPvX2dkvcONbQ6RfcH8DcxPkWvd0M3nVZ?=
 =?us-ascii?Q?JCaOqnAVSlEQZG69QJjOlOA76SQyf9rGQgc3FRw/Kil6QVBFk4PXu9YNEl6N?=
 =?us-ascii?Q?/2Y8UFXj/oiKuKzS8x9o29yBuqPmKQrragz6UMoAvqva7G1p6fYCd74zEg6j?=
 =?us-ascii?Q?T7W5brUVw9gI7ESKfaA0RB316anully0lDr3ciMWtCLeLoJp6gNBxW9pPV0w?=
 =?us-ascii?Q?XbBqXu0G+SGWCqViYJaPRokmkKZhMSut307b60jGxoGCEEfPjGnZcdKk9VSp?=
 =?us-ascii?Q?0TFpI8QmroaYLOjdlPRlcj30o0hB5gPQjzENGigTydgSmqpNUn9H+v8bjXyx?=
 =?us-ascii?Q?bG8WaRo+mdDniLPVlENPKHDEI87NtBHIxnzOXir7e1WsjgggVC7TpvwbiK+W?=
 =?us-ascii?Q?V+KiU1fVpugBgqt2ynEv7ac7of385aa2jLpGyhovTIvXybLsTTuFc7e1B0UW?=
 =?us-ascii?Q?SH9SqVBq4ZQNRIiTuaw+adKuReZt3FRaADk8Yzz+3DzujqqG/uoWAf2r/aJz?=
 =?us-ascii?Q?lT0PZUAwN/ol1Jf7OIxT4oAnDfWd7Eq/gF+8dTLAZPLuraZmcA6Tp3P0HfE9?=
 =?us-ascii?Q?crzfNzuvCB1qP4SPG2jTFQIzaZXh5sas27vX4AoE7CvCB2guE5ItHN4oRfQp?=
 =?us-ascii?Q?DFP9VS0gXNgAlyUckpWdYoHJ8XLmI3cutAENgARpG7blCFM/N3yVAp+dWv51?=
 =?us-ascii?Q?5TGyCMtLjN4YA1gVa3wy4+KdA0qUcmQfZf8kip+aX7KjkZexcy/Z6JqB5TOV?=
 =?us-ascii?Q?pFeD9Q8lRcT/lD2NKcw9Fcy/zKSHWd+S7DEgmlaeErdreeHRkaEnXKm9Wk9s?=
 =?us-ascii?Q?nUZ2nzr+F1vbPsuEs4HUHv7VdYn/X0U5XX4gBKn2wKsKzz+ovUp4xs8NfdTM?=
 =?us-ascii?Q?SUijWRMxTVvmFR1QJ/nEtIAMhCmeUCG/cyR4vR3fwe9G43oc3vIUeHiyvy9t?=
 =?us-ascii?Q?FJXKoBYUoLtJhJxQsL1W2asiFxOjuKbZJexKGqqocUFM/rqqixwmGyxHu/el?=
 =?us-ascii?Q?8TbU1a2fk8zREiaAib1OanFasmQAdrc2++jUfg2HdjNRXforq1Ydd8oFCmTx?=
 =?us-ascii?Q?E+cLsYLJURefI/QLz2qGvEgqPnG5xQfeSQN0rASUkh0cSneNVCL+FaOjAjNU?=
 =?us-ascii?Q?Y01lSOGP23MtaDkwOLqzSJE5i5WhGNUrVPmvKFyq9nM1yCY/dE4R7nEQAeDs?=
 =?us-ascii?Q?m/lTWKskXbq0gbuBtFb7OZOWYbbmdsB1P3Tbm80diDYPbJ94lEOLUKJCBI6q?=
 =?us-ascii?Q?Q5H9ckKF+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b3c862-c0d2-4b8d-61af-08de6f642fa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:08:41.9511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AzP+69CbDsI4WEy7y0WFsUOuQICnphyvnVCUDsBkz18TCn6SW5j7Ut3j6PUEdu991XH5rhI0ier/J5dmn2og7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8101515BD5B
X-Rspamd-Action: no action

> Subject: [PATCH 08/19] drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks
> hook
>=20
> Add .update_dpll_ref_clks function pointer to xe3plpd platform to support=
 dpll
> framework. Reuse ICL function pointer.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c1ed44b23bba..b50f02303356 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4656,6 +4656,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr
> =3D {
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
> +	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  };
>=20
>  /**
> --
> 2.43.0

