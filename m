Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 764149301E7
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2024 00:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6839510E17C;
	Fri, 12 Jul 2024 22:02:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eS4dJPYv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956E310E17C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720821754; x=1752357754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kUp9lfZORCX/8miSpM4d6vhrDsRpWhun91qS4eMh9js=;
 b=eS4dJPYv9UDxdoJ40x96tw2f89Yadr25KVUz1Es6qzkFuen7BP/cLqz7
 XzI/MpxvaKxIJRPUq7AaZXWotCh/pT6V80wj2NFl9e3mzzPRphyBO1GzR
 fU2NvQvCJ+1xM8bLkGaLokUuobi0cAc/FqAE+bXXI3GYxhX9RhpicPC+N
 OjYuv6O4Te/pfV9wPiQVqWbTpsMfWNcuijz74+2HtEiMEHKkOn6IA+zeE
 Yx3hQvBFj4rb/KWxUM6jT+16GBiqtBwjN8aZ1q/Bs0hn3YirusuyYsWtq
 nhFLIFddtTPzRMiLFFCOACWeXouJZIDGJSW9kCV2Kdot1vBRkdSIgsN/T w==;
X-CSE-ConnectionGUID: jZbOpaDuTJqtkP/vbtZb8g==
X-CSE-MsgGUID: 8O7EgammTPyvKjcaFCUzyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="40813915"
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="40813915"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 15:02:33 -0700
X-CSE-ConnectionGUID: CkAiqDT/Tlq7I+gJ+PzlEA==
X-CSE-MsgGUID: X2Djr+sXQXuh4gGV1FTZjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="80132001"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jul 2024 15:02:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 12 Jul 2024 15:02:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 12 Jul 2024 15:02:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 12 Jul 2024 15:02:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 12 Jul 2024 15:02:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OerlXqYM4xvNtyLXb/fNQLQOA++l6fIaFNM2tXeDPDajjvLT4aphZugLyFI4amkp8GGPvDWE1F7WetZuWjp7ESBLXNxTFEyfYlExNd2gY/W5U334ABxO69J+GLq4TXgyGALxYCGYphz7DAofe3C3Em8uaKd0Xv2NLduzVsrKOyXtHgfACgTTVRM1cSDeonxhoiZ0ubYGo7frhnHBDTkaDU/nf2jeZhpNyPJPmPooMf1VMYzYtdz6zNHxug3WpmIEvq4V2Q/9BwQiPV/7tHhTp2qz7xUNBJ9/JZ9xnvqINT/vcEDUOAINr5+dOKUHTsNjCfNVF79zube2FheQ1tu2DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Os8fPPqs4si1FVg9mg71L9iuoCwEUr0zqd91C3+gQyg=;
 b=sEpW2vMpfXKXXxuhzPOfD0267M4mpW0TvQJvXMbmGfA9V2MuPTsQj296JibFw91sjUWTeJtdWT/RhbVodjouCcVpV5ZONMScIyVXURrIF2eWDlP+lP0Y5ZjDZKlfTYyUOykYzsEhyc+xRxm2SRbNDLxRv40jkiIw1M4I0w2EgXIywd/lajdfW4/9NzS4BBQl/KAHpBgiTWXmTXd2SLB6Omx8N97w5mrXt1Tf0WDJn0+FaQ8ymCpARmzU7/KGG9PWvVeAElc87b3foSeJn5yHNoqclFkl9QFq6TGLnnGq2ekIYcASuET7CJwUqhio74kLhrduxexXpIg1IOeESLd8eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA3PR11MB7528.namprd11.prod.outlook.com (2603:10b6:806:317::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.29; Fri, 12 Jul
 2024 22:02:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%5]) with mapi id 15.20.7762.020; Fri, 12 Jul 2024
 22:02:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Chris Wilson" <chris.p.wilson@linux.intel.com>, "Shyti, Andi"
 <andi.shyti@intel.com>
Subject: RE: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Topic: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Index: AQHa1GRtzjAs6tKnV0WLgQA5ElLPRbHzdtPwgAAt/1A=
Date: Fri, 12 Jul 2024 22:02:29 +0000
Message-ID: <CH0PR11MB544443A7F181A31422511223E5A62@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <085f37db-b2e0-4246-8850-1d6922fec222@stanley.mountain>
 <CH0PR11MB5444DA727045A0344CCF191EE5A62@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444DA727045A0344CCF191EE5A62@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA3PR11MB7528:EE_
x-ms-office365-filtering-correlation-id: eb7fa08c-486a-4157-93ec-08dca2be52d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yNQ6a75and1N/cQK/zDaRFNiIqvH6yckzWmL/rcpzEboMgzv5FcRcHoaYlgR?=
 =?us-ascii?Q?IQz3Px/cRo9wqaQpyqAfNPCqNmM8x/yHdVvvDojDL47hJlm//Khxc2BOvgi8?=
 =?us-ascii?Q?k4xZTd+XEb0Ig15wgun8nrZ4mpdu8vecLF7in/Y+kHkVribdbcISCc2NMJZm?=
 =?us-ascii?Q?2HEeAKtOfq5Zse18mvUNArKWfPy586LK+nViwVol+oaYwWbZ7wCQNny8x/XC?=
 =?us-ascii?Q?MRcKfBGKgIZbPcwC39+e4fnAt7XGZ6OkUx7RQM4c5wZTSXloGOXxq/9LrObd?=
 =?us-ascii?Q?cIzrDJnHd2nhw/PWYrF4Wkyi6Zt3lPQtGTji/S93HYVAYF8xEJ4iGl7bVSgg?=
 =?us-ascii?Q?veBQW1uxGaYnjH+xnxggP4zIdMHOiBnHw6Bw8gHEv+NjTr/jnjEqsOV7eGDw?=
 =?us-ascii?Q?7m8H4xjKIUkOmATra4au4WQSh/Ca6OXC/GBbdm8lFQ09MH/zoz5hjtO6iz9b?=
 =?us-ascii?Q?Hwtw2MMahLgl76jAB89Gnfe2PuR6EgkY1u6w//O30vddJanBrMpaoAGnDWWW?=
 =?us-ascii?Q?woDZ9T94hd/3UV7t+gxv6u6imRKwRxnjLHjF/4QAiFhhBNPjGEXtcFRjEjj/?=
 =?us-ascii?Q?jomLE8B3FyBKf2SgXxJ/z42hHnIZm5FiJIT/veV/owe8ijxXN1k5y50Fjptk?=
 =?us-ascii?Q?MgOSprmSUmJGAL8fZbRTvmh8YKp97H6dqL4U/Qdjq7BBfjPFw2RpNp0vrmSJ?=
 =?us-ascii?Q?VQfkmgV0V/pfK2GMLqKVLUxM5PBuRtHMVB3Vdktp+CDNtok/QCZuAI9BYe1O?=
 =?us-ascii?Q?LBrS6S3ln3QWNftEvYpm4aol6uR17DZwAPFhJn3/zbXiRjuRbVPFymqRJRFU?=
 =?us-ascii?Q?6zJNHH4tB+LqZ3OTWhSXB9jNSGmJxW8SPhyqH5cSJQrm2CGG3mSFXOCHAS0R?=
 =?us-ascii?Q?siRrl0hLHVESzURcYHe6eZzbPKjd1ONGi2DWW6Ss2F7vPkSVuyuQC2FjI1n5?=
 =?us-ascii?Q?K8fNlUGdI0LoX1y6gW+hQPxpWYt4VQaQmcsa+xwrWmp7g2mC6Yute5690gxl?=
 =?us-ascii?Q?NswMHugfh/owvF0ZJWATsiwgxboTdUdGsQID/Qh5pen/qWuC/lYD7aSUXhAb?=
 =?us-ascii?Q?yVFDF32/VeG+CACSmqwyogg+Nwmm1qlnLUAPRF1MecFaARNVZ4hKyBMsJNxO?=
 =?us-ascii?Q?ercQrweADlt5SAczZuRxUW8cLLhfXsOSlSQwtdc3M1VqFBxRBrCMiKfjb9Rb?=
 =?us-ascii?Q?ugO/u6boiqYirLss5AAcIF3ebNVcsh1Vf+ZgJTAl5NcSrw2VeRyaXZt9gnlM?=
 =?us-ascii?Q?17yNl2sG8UL9v4aTvx70BwcglazlA/kebLqEh55Ll4tNWemczQrl7JKlSs6C?=
 =?us-ascii?Q?cGJrVXWCS4NxLLRbjkAkL0QhQeSH6zgDQ9UyT2MBfnGTX70UZub/nabp/VUI?=
 =?us-ascii?Q?dOtAo/g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nHrGLuwImr5fbwwYCgubjpADZTmEQA8X/ipF1Z0l/ONUdWFWVA5OnzuQwMe2?=
 =?us-ascii?Q?yhFTBKYlRjRXtuDwyrNxsLF/75/s23gF5IYtv2XPKPVLcNLJw27pBxZkffIY?=
 =?us-ascii?Q?JOZM4V+zyGyJ/h36W/RsRtEeTtRSqES/oVPbb0XDOI92yZ+vgEc2/NxO7gye?=
 =?us-ascii?Q?J/LpOfmubKMni9HzcziEtv17WSoPJCQKrhTi8AfyZN+Xv+raaqVmdL8f8Z+4?=
 =?us-ascii?Q?D7YkGfULNYX20ItcILQ9HO85j9aPvH41/O4SdZoQ+G2GTEHX601s9AIfcUUi?=
 =?us-ascii?Q?agceP2MEPNdrfAZer2s0yONozmWl9kj1B8aH1LCi5U/tTavijJcVyEDR/Ffx?=
 =?us-ascii?Q?rUXq+eWotUi0zpkPoFtjd6rOVFaPgV/PZv61pJSL/ADwEvFJr8K1o/id+RSu?=
 =?us-ascii?Q?7owstUu40Bmvsbj8ikVWlj8RrKuKsL/ft3MOnMshyjM74g1yHCcPKtals5/n?=
 =?us-ascii?Q?w3DeVq0g+5IUE24NkQht5wBGbgxSFL/DeN7IBPQZKWE+R6OB80iWWp0p0anh?=
 =?us-ascii?Q?6yf9x7K17QooahK6U5s9XvUH37GV0DstHzMq5sKWtLvxPdDc5RwrP1NzezOC?=
 =?us-ascii?Q?AQbrQmqYLsBeUL/Z0/da999uOFlwIj6K8qG5CXwtwZBi+F6LT8YYzXCPfAB3?=
 =?us-ascii?Q?qOYe8FFDcY+YQgez/hPoA/awxBG83As8d2PCVYsYm0ztF/Ft+yHa/aEXIdsM?=
 =?us-ascii?Q?lxU+6ge+PZ1vOad+A6JNQ76CKvnHUC6iRbG3k4H5j6RinMvqYXzmFYxViA2X?=
 =?us-ascii?Q?knJo+KsALpArlcQYcuOjNWXbWn4BPf1OHhkeTRc6yGELMQgngXTH7f2U5x6r?=
 =?us-ascii?Q?NpRhzGoqy88jfnzGdqmrVquimrnwzoLWxm4tsSjSFwPvGoaKqzw+ZgQis7Mp?=
 =?us-ascii?Q?JAv3LVY8da9mmAyzrBqajvpTkSUYvqihPC7qjbsugSX9VWO2WGirPns4i0hu?=
 =?us-ascii?Q?gRZXjXXDH7LnqL7FRhDlQFHPf6iIhbjUn/zF2OhWj0bBzQ6Vu0Tyh7RguU5d?=
 =?us-ascii?Q?9SRycGaEfowg7jysEbN/3u4nto8KO/eaS451TlAylIKpjZoSeB3PgXronmU+?=
 =?us-ascii?Q?8vGYdp+GiM8wAboffeQl54/bFRJu9JqsRuHc7Nwqvi7jk4Nlp4Le2ekXykvh?=
 =?us-ascii?Q?IfIaLnPgIaIr2m7yYK+GUMSFslidNm86cUG0dZotFTzVnoLCyl7JRFFN6HHa?=
 =?us-ascii?Q?fMWe4mqs0mjeU9N+0FuNKJW+pj8HHdE2Ek0t8XU+XJR8YzZEgy6MY3ami1LF?=
 =?us-ascii?Q?K4lHBivcbHJQvDkibeiIeOTxC6n/vNDBcObmEBwRduLbmTUTPQiHfdgmUspE?=
 =?us-ascii?Q?bO7YxW09ma/juznkg/Q4z6LD7AfPH4tt+QcdYhJk76CNHHRcNA0R99LRMiOe?=
 =?us-ascii?Q?GWuVSa2RORZ6DzO8UaZ/iCb1sDmEPgvQILAzKe7GfQHye/B/IpYBkV65pZsB?=
 =?us-ascii?Q?FYM3DU3oTf+9VnUmjgbpk3tvHNcCKBRdWAelRb8RZMJrLThlilCdR5pqlZ8O?=
 =?us-ascii?Q?de+lyQl+tcOjytC/n21hLScgt5EENCDWOaU8kMB/6iLuxReFGzeOVMdUOWXn?=
 =?us-ascii?Q?V08yfEZZ6Rj7/buCCmN8sjwxJdGSKzMto569vahn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb7fa08c-486a-4157-93ec-08dca2be52d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2024 22:02:29.6951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GAFnuqygAShO14eBPn9cFMqfk+YH0g9rYqFAtbcrAqTw9knsTak6tBqqc6WT9lOZxt1LihyRw1O0fv4oJl+P0Wv2xJPUy/CmmbTF2dPhvDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7528
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

Just had an internal meeting.  It turns out I mistook this new issue for an=
 older one.
My apologies for the confusion.

A fix for this issue was submitted: https://patchwork.freedesktop.org/serie=
s/136053/

Thank you for your time.

-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Friday, July 12, 2024 12:17 PM
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: intel-gfx@lists.freedesktop.org; Chris Wilson <chris.p.wilson@linux.int=
el.com>; Shyti, Andi <andi.shyti@intel.com>; Cavitt, Jonathan <jonathan.cav=
itt@intel.com>
Subject: RE: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning

Hello.  This issue should be resolved by the commit "drm/i915/gem: Return N=
ULL instead of '0'".

I thought this had landed already, but I can't find it in the repo currentl=
y.

I'd recommend asking Andi or Chris about this.  I'll CC them about this.

Thank you for your patience.
-Jonathan Cavitt

-----Original Message-----
From: Dan Carpenter <dan.carpenter@linaro.org>=20
Sent: Friday, July 12, 2024 7:04 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning

Hello Jonathan Cavitt,

Commit 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup
warning") from Apr 22, 2024 (linux-next), leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/intel_memory_region.c:371 intel_memory_regions_hw_pro=
be()
	error: potential NULL/IS_ERR bug 'mem'

drivers/gpu/drm/i915/intel_memory_region.c
    327 int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
    328 {
    329         int err, i;
    330=20
    331         for (i =3D 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    332                 struct intel_memory_region *mem =3D ERR_PTR(-ENODEV=
);
    333                 u16 type, instance;
    334=20
    335                 if (!HAS_REGION(i915, i))
    336                         continue;
    337=20
    338                 type =3D intel_region_map[i].class;
    339                 instance =3D intel_region_map[i].instance;
    340                 switch (type) {
    341                 case INTEL_MEMORY_SYSTEM:
    342                         if (IS_DGFX(i915))
    343                                 mem =3D i915_gem_ttm_system_setup(i=
915, type,
    344                                                                 ins=
tance);
    345                         else
    346                                 mem =3D i915_gem_shmem_setup(i915, =
type,
    347                                                            instance=
);
    348                         break;
    349                 case INTEL_MEMORY_STOLEN_LOCAL:
    350                         mem =3D i915_gem_stolen_lmem_setup(i915, ty=
pe, instance);


i915_gem_stolen_lmem_setup() used to only return error pointers but now it
returns NULL as well.

    351                         if (!IS_ERR(mem))
    352                                 i915->mm.stolen_region =3D mem;
    353                         break;
    354                 case INTEL_MEMORY_STOLEN_SYSTEM:
    355                         mem =3D i915_gem_stolen_smem_setup(i915, ty=
pe, instance);
    356                         if (!IS_ERR(mem))
    357                                 i915->mm.stolen_region =3D mem;
    358                         break;
    359                 default:
    360                         continue;
    361                 }
    362=20
    363                 if (IS_ERR(mem)) {
    364                         err =3D PTR_ERR(mem);
    365                         drm_err(&i915->drm,
    366                                 "Failed to setup region(%d) type=3D=
%d\n",
    367                                 err, type);
    368                         goto out_cleanup;
    369                 }
    370=20
--> 371                 mem->id =3D i;
                        ^^^^^^^^^^^^
Potentially leading to a NULL dereference here?

    372                 i915->mm.regions[i] =3D mem;
    373         }
    374=20
    375         for (i =3D 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    376                 struct intel_memory_region *mem =3D i915->mm.region=
s[i];
    377                 u64 region_size, io_size;

regards,
dan carpenter
