Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCdwG2qqxGmD2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:39:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB232EDF5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:39:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12EB10E8F8;
	Thu, 26 Mar 2026 03:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BTYnoUx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7040010E24C;
 Thu, 26 Mar 2026 03:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774496360; x=1806032360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X3ESceh30ZQ79I42j6T3wdg0eSp/WegseMuO5YNsL48=;
 b=BTYnoUx6N1dAnpnzVVXeVmZ7fbE/l8j24mo3/rlqb0E9si+B188BxWEf
 BwMB6sHiw2CQqr7vj75VG0/zgJIxYGmd9p8q5emtdvLA5/TIO05+Zbu7M
 3TVDszhnuqbkVj1K/bkw/YljU89PYUiIF2U9dgn9X0juuZ4CFh/QtLl6t
 Z69rxrWbjYXQNJmM2e1UuDcA09nsXSxASf33+aRJVcsZDJjNM87z+GOb0
 oYUpMbrUIwFpkv8uwHx+WUtx9zeBgRAIJot4HraCru6xVr901VerbyjHq
 kjmkxH+j3c0sud3io+pYfDvflCbmyH0XHYuMokeI9VoJimxOldC7b22da A==;
X-CSE-ConnectionGUID: P7YLRbYzRNmAiX0hTDFOew==
X-CSE-MsgGUID: iBmOL3jFQZONnPCgDIwojg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75262753"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75262753"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:39:20 -0700
X-CSE-ConnectionGUID: enoBHnifSS6mLsJsoOW4lg==
X-CSE-MsgGUID: +/Mv95U4SGmrPtOrqNltjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="248319725"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:39:18 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:39:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:39:18 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:39:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6zvbz55RUjbMIU/rayOUi9UX++Jl+pIS2c8uKSHPM4pZfSb4NcV7CeG5/KLEA7KGWBYqPM2dJXlJcxCqtDDkZKx7jtS7j28GIe83k1bZpuWQ1ClqZnO1rkFLs6yuPVtGnL/kSmF8G23NvtRmwAHjw9/6ztmclobISD94pP56SzVrHL6fxbqucKWxcXFukHPJ+R5gSuI6bTKf9Xn8LWkXc7S9o0AEKAKCKEC3hhzbskNT4H9DiRr0uBfEHIQzi9KUnWyUwhFazyVEyZJrLpZn0CgausjgPdXRPu4Saf7Da96dBnodVhGL6nipVgela9CSczFVH02BLdeQA5QRRfrCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zcAU4V/djd9FuE+iF75luwe/RwYypCXWo02xszSNNY4=;
 b=YXd07+cnZOT7vymZkdOeDq5gLeCTfdIfbtxbsuQ0v7pMbNRSiRuXgGhnTDFcTvpXoT0q8yMp+1MsLZHMoAayVvYjvT3Ka/h8Qyjr9JI2ELoTiuUfMLdTCVbF48qBBpKQItW7nTbVIeziH6hzQLt+5SMDqjQlZxqspIgSAuXYmHUXanB9JA62kr0cYQh+lExfJiN/B2VVBK5kWcV0XIec1Jw2aBdK7kB8YBIVQe+qUkYhNfXE2AN5uHy5P1ogu3pNjX4xJHcHwnNrgYTZnN23RkylY8wbxG76sGTM/rN7W8+OwWjRaG+CYFjeyW74YURzLFc8OlMCr6TRFazwGsiBbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8758.namprd11.prod.outlook.com
 (2603:10b6:0:47::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Thu, 26 Mar
 2026 03:39:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:39:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 14/26] drm/i915/writeback: Define function to destroy
 writeback connector
Thread-Topic: [PATCH v3 14/26] drm/i915/writeback: Define function to destroy
 writeback connector
Thread-Index: AQHcvEe6DlnYUEazrk2WWjXus4TMr7W/K8aAgAD/zOA=
Date: Thu, 26 Mar 2026 03:39:15 +0000
Message-ID: <DM3PPF208195D8D39F319F871CA9F4F0709E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-15-suraj.kandpal@intel.com>
 <acPTufY6SO5nWnh0@intel.com>
In-Reply-To: <acPTufY6SO5nWnh0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: a435dfbf-7e79-4b15-a026-08de8ae940f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: Vxk9qfFkzXW78gSE7a+d/qlaTd9PGHN0nBJWpOTik9gBg+qv6rPLVl+5ZEuJuAFZFM/ZKqzzTRTYsYW2qhD9vfOFSOegRxZJPxBxsGJUz7YluHqID8HFxla//t+Bi1DEB0qZTFIvakLN+K2uoGl4SIL27Bc7K0dsfH1xXRK2XJpmD+A5iOCfwvXbm0ZohDa/zuQQLPxbqliHluyswyZqgjvgmrmT61rJVEzqg3ntZn7vl9NI6WGd6UeFjl8LMR8ehQk4iahNUccKvHEdtGsU+fM/66ahyP3ugMkhjSre5/M/BqCbdYedg8yCMHVeBhVsBSaT1SjIFJK1vwYODD0oQMNIaTzWJLbTN4QPUctlagP+YpyoxhaM5CjbfW0B4ZT4t2zjMa+CKTouNO+p3oQizeJ8y4ac5r0gcXwE8v6bmkTw9KcxL9a2V512KMNBGvKjT6GmDKxBpGnOJYGS3FdtbV4cPzU8QN9bC9/JFtlR9jBZx2w36AXo9kcxnjzpaYQXg2g1iADEszCe6JN9yEntz61CRyo0Mx2KVZTUNBkiTGXq6M1kAPuFU5+BlEHdGxLKSBG8zF0y+eYiSdKR7cYq4SA7BlFxtyH5cPJlWjK8quPJyyH8Bs1qYSOnFKn7W2yMCstVB1OrFOJ6DVMT6OGaNKpAeB8tH77xXez/03WWUp0diSewCk/ZQz1PzH3VoqcpK1NCeUFXbrxqXxBS6Nus8vhpR9Fo/mGMSB+5xk/Mbi9VXwylHVJnJDAOHsIRRCoXnL68GZZp6Ac0pe55eeuZ0J6kq+zwRfTtwrHNqDFFzZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wxhsWvH/CwULSrb8kWeZKYvO4u5WA1/RSXm9mk8AzQajDRf+GDRavoExyw?=
 =?iso-8859-1?Q?3JgLE3+yFkIQ3V1+pyw/Ap/Hf6uBg9oyw07jPuDoeVgleLadYJZxPDySCD?=
 =?iso-8859-1?Q?cnJpQXlMFd/QDzC6YvOjA9tDoTaSKY++i5A6gE+8R5e/EW4T/bbQ9r6WRN?=
 =?iso-8859-1?Q?eDTg9rWOAk9QugTz2kJ31cd7HZ4amEbFGgTNJv11YnRSoxhV2XIDYEaw+x?=
 =?iso-8859-1?Q?ev7NPaYk6F3Vh6v8QQjBJimcAZh3nikzLL7b7Ws48+Apk2JCKyYfViQLCT?=
 =?iso-8859-1?Q?weETQRi5eEIpbVeg0NHxzraX9iYJkfs53McKrn3WpKn8QmnWxt8Hdbylj3?=
 =?iso-8859-1?Q?ONhDnipkJ1C3h9285pBcKW/GNIxqt9im7GCPU3lqzRQnZeVGtdgIJuT7Fo?=
 =?iso-8859-1?Q?dI31QibT2aVN/wJ116X5ZLnTkuztM6YIG4XwsTs6xKuZ18oegrgsCPZPB/?=
 =?iso-8859-1?Q?3OHQ8kzrfQCN4wGV0oyAI7GmyQvn/eRAvfqtj52GEUipUxH1gc+mCfu2Fk?=
 =?iso-8859-1?Q?IBMyyMzOJCbPYtzC7coyzuKDMNFnReFCmxTDQIscTZFPkdZ1FstPRjYPs8?=
 =?iso-8859-1?Q?9Pjp/22t7sQnoiQ3QCUiAEltt4E/SMPM4Q2FyFpmsjxUcGcudamGR/I6Wx?=
 =?iso-8859-1?Q?27weE4TjeuZTymr+CMq4hQid4QpYFWfrxJK14WDgbMStwqVScdZuYkvRWW?=
 =?iso-8859-1?Q?3JkOPfGIH9Lnk7N6gEfjzlmn4z8kli704PFrdEANRPXzZIVfaPDKWjz56H?=
 =?iso-8859-1?Q?irsIABonLGdYn7LiLiNyKMt2zC6xPaJHwungHNCnachyEC9BgaAJoNbB3P?=
 =?iso-8859-1?Q?ARXGgJUdBQDY/rHQPlXd8t1vCmIWuPcyGzwl3u5b6v63a4TCRBxdMiJs4O?=
 =?iso-8859-1?Q?GoEpdbbaVJwkr3Mjvi+FZe7aswHGwoG8RsKu9cFCOyFMYHPZaCGB1E0Pz7?=
 =?iso-8859-1?Q?pfRq74qvTOTemR13UIEkqrjwZfnGsSrEc/6jl8ZVQ2q9/XNge45hPCS+zs?=
 =?iso-8859-1?Q?y1g1sjs3sJQ1srZ1y2U+clY3hWwm4VbVAOQt1HICtMshtl41hvn4ui/aVD?=
 =?iso-8859-1?Q?sa6C8PHVTJBP/2FK1P+dkE5/3Xn1/ZiM0WB9gf28qaKiBHH0W2BMj+gaIz?=
 =?iso-8859-1?Q?xEs1KAlS+YYIslBIs0wOy/TLkdwSlSThu//mJV3lwOOgZhGR8K52pOCArk?=
 =?iso-8859-1?Q?bj8oN8DWsELqc43s1HcHsbnwMc04H2xFEmhw3axSF0QYvIDIhMVExZQ/o9?=
 =?iso-8859-1?Q?5SZqbhLg6O6YASSCVjvFydBk0brio+ctsyl5Ms2df+889D1Z6/SMPq56Ys?=
 =?iso-8859-1?Q?MXAxQ4iWUctMciVztBhXXpQ9LfTKtybIT78ioM5eVXh1650KRduiSDXq9e?=
 =?iso-8859-1?Q?ab3cciR6NQgj+gwWj/ZaOSYKincCC6QhSHC8eUvF6EqW7yDwmbsRaKlhK2?=
 =?iso-8859-1?Q?naJAZg79u99+h8WyeNXyS442DgVFI7VcqADZN8v+xh849m7TZu9RN3Vnwa?=
 =?iso-8859-1?Q?IgpYUW+NIDwSVUMBvCBsbjNWa8FJqHv+jQIFcwxc456W+eeUl4QaNHga6/?=
 =?iso-8859-1?Q?VFHoSRhpMTrMPdmTPwjfRVLnDIsv2njWV5WfXxB0mHMhU+aoZqkMKE3qPZ?=
 =?iso-8859-1?Q?rA1V+uREHCjHAyLfAqAzAnetiJuEskHegr2+qvhqya9mMv5f4+a5X8lXh7?=
 =?iso-8859-1?Q?IaJaQGnUW5hHfAsYFeQ1hp+evXiEZ/bzyJx6MpXn/By4bno7t6ZPypltxq?=
 =?iso-8859-1?Q?Sp9suEwM5SJK4wx8XqwbZySqcA2ctwHFElzR2bu+4+WuMzwTRJ58HttCWX?=
 =?iso-8859-1?Q?XmmHAO5tjQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Oq9IQO/HGHYAqWol20aIL7wv16Q1+5CEuAW/AyXtMWVT8anHH8mkjXoq5rCETvPQNlGvFZu6TVhAAiC5vofRe4qv2UlFnWYY9Os1KqnL8bG0jp4cXTANvaeNNkqpPOIWCJU2oK/LxK07XlRGSbILWSzywoR4uUyyKQbC+WloInSs4f+s8Gufrit9r0RQoNVYfgVZIS1YJmoyAF7pRsrvKZ6DHqVaF+fOpjxR4C6dRW/T8Q/ebQoHv9IWfgBBdA7KfgUro21ebai7TCf8JLp5f2QnCrDHjrdmeDvo1Y4OFzdRSxk6DClE09ilxh19OtEZHCDi8CJGkOnPrS8Pc8YjHA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a435dfbf-7e79-4b15-a026-08de8ae940f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:39:15.4563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cbVlVX8mqi/ohu6Vi8eOn7dW5SdMI1HMYZQvj3uWl/3JG188ukohAHlPhymfL7jAxEmRKEDWxsNdNIyfE0lfbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F0DB232EDF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 14/26] drm/i915/writeback: Define function to dest=
roy
> writeback connector
>=20
> On Wed, Mar 25, 2026 at 04:37:32PM +0530, Suraj Kandpal wrote:
> > Define function to destroy the drm_writbeack_connector and
> > drm_connector associated with it.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index e677cdfa6207..86b53e4603ae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -161,6 +161,12 @@ intel_writeback_detect(struct drm_connector
> *connector,
> >  	return connector_status_connected;
> >  }
> >
> > +static void intel_writeback_connector_destroy(struct drm_connector
> > +*connector) {
> > +	drm_connector_cleanup(connector);
> > +	kfree(connector);
> > +}
>=20
> Please squash with the patch that added the init/allocation.

Will do.

Regards,
Suraj Kandpal

>=20
> > +
> >  static const struct drm_encoder_funcs drm_writeback_encoder_funcs =3D =
{
> >  	.destroy =3D drm_encoder_cleanup,
> >  };
> > @@ -170,6 +176,7 @@ const struct drm_connector_funcs conn_funcs =3D {
> >  	.fill_modes =3D drm_helper_probe_single_connector_modes,
> >  	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
> >  	.atomic_destroy_state =3D
> drm_atomic_helper_connector_destroy_state,
> > +	.destroy =3D intel_writeback_connector_destroy,
> >  };
> >
> >  static const struct drm_connector_helper_funcs conn_helper_funcs =3D {
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
