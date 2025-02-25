Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF44FA4358B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 07:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20D310E55A;
	Tue, 25 Feb 2025 06:41:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZoBvh3nP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372C210E55A;
 Tue, 25 Feb 2025 06:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740465716; x=1772001716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BcooPHgiCXS5N9mCl+rYN4JUALRad6wrS6qPIjN+iu8=;
 b=ZoBvh3nPGUAHdKXam86LH87rYDzF/9mhKB5+GRZsPvuEvaqpF3YyWR+q
 VUU3PN/cyrASf6SPbgUCUv84Puwni/YaZA1SKF0GcF0gY/sDAvTpkcvwF
 7z+nf28RwFQsFmqqyKLn3vROtkXTn/YsS7KGItv59tvcqAST0kzp0eBYC
 ApDJjntUb5beJWhCDUC7xcZ7o2UEzpYzXTvSAVmkqcjGm8c27UzgpR83U
 +4pFjVYCmJf+IfvvvAfkgh9s/25pz2F3eD6VAooudWERmQ2BK5ydMu6mv
 3FM8ot3/OnBq8hkrrvXvrMmqtD9VsRMgxNfz1C8Ol+CBdzMTCQEn69vzf w==;
X-CSE-ConnectionGUID: pCgqQ7+eQbO73924dcGP9A==
X-CSE-MsgGUID: DceuGv3cROuETnJH44G5GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="51886426"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="51886426"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 22:41:56 -0800
X-CSE-ConnectionGUID: uKOqlgKpSWiRQycwEnXOyw==
X-CSE-MsgGUID: GjMmbARdT5miaySnBFJ2rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120398585"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 22:41:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Feb 2025 22:41:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 22:41:55 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 22:41:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cwuFrD3jgSskJ7+LElhSX5sf1eVvH4oLSDMkjecNrPSv+9Wul44orLSF6bWD2NO55uJXrdnpFC+PpQT0SJYnYdDYKbFCPKsMm51fSUXOG0f8NIA0ArgOMZI1ybM3d2lUn8aicYBQH49MZPgpxmJ0J7ECkJk7z6GJRaHs9IXhms261Ihfs0nkKEHWp8PVMATVzWl67+o+37tAY9Yu4pPCQjuykEruLGvLPKJTHwTSWbVZPr1L7TpVU8nfs5IxtlQ81/CfOwcOz5/D//Y/0jrN0jq1XEztBkZAtKljxFgZfT4BqktnnImms7qqonGn4b848lauyZmTEkHuE5j7p6UOsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PwfDoCU6w4ZWEv+WfsuX664GTGlSnz+UgL6C9Rx6DUw=;
 b=IIZnOfAJMRr2n42PMjIBKLQxgt0zDYmQ3tu++DwcJxT3fxQTXXRyWO706t+ilNsAnadFHjK49XYl3EOzchOX1DzSkT+DKj9hClok+UJy85XcxAoySSNtj4BKQTaHCtFKHzJW97pZKJfeESbeIBv7vXlU+SxxqqFBZRSvpq/uyMPWOLv6UcKZxdcZN6teXaLP08GugiV9RuV697ukpx+pxg5fsFKUxeBVJcLYUUkOLENPVTu+VRu8nE0It02SCQJnHWP9f2bxHcoTFIoUkGpr6sLPecrg8bNW66zfBLJo6dSCTgR+FZJjvJDJyhm++WMkLo26dbPdSQRecXLv1lYlUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6246.namprd11.prod.outlook.com (2603:10b6:8:99::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 06:41:47 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 06:41:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbhpZzsO3gJ4cfWkOoJmlBg7Tdr7NWRhEAgAFMe7A=
Date: Tue, 25 Feb 2025 06:41:47 +0000
Message-ID: <PH7PR11MB5981971262D74BC11EAA1BEAF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-5-animesh.manna@intel.com> <87r03n7h55.fsf@intel.com>
In-Reply-To: <87r03n7h55.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6246:EE_
x-ms-office365-filtering-correlation-id: 71d58132-0105-4b73-5f5c-08dd55677a47
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?C6Z6P8UP4653BjAtZzKyk04Qqj0zgN5Sa4fis15SWQTL7FyehrA1xz4z12TY?=
 =?us-ascii?Q?kIERpig/1UGL/CoMZVM2fw/S91EaoOkczuEQQhmJhDO1wVZWubqQxR+JAcfW?=
 =?us-ascii?Q?noyQD4xEz/5C9nwYqL/tnmSNIXbFoRKzv2Qw8VLNf9f/B27c3ShkRTxMs0sr?=
 =?us-ascii?Q?B3CEepUDrM9vObCfQL+shenFxKUcK4wtEtH31q4IyyApqnkzlje4x9FRKdAk?=
 =?us-ascii?Q?ckG3d4kIS+J6wqEk3K92MFbqB3+FYsevZ4fz8lkSu5Z4KRTqSrEu444ibq9O?=
 =?us-ascii?Q?MjuUk7kRHVzrTY9ya1WTHX3bqZqWK8TVmLxZuS+NAQOcHWGNWaiSueCWDr6/?=
 =?us-ascii?Q?GfgtiKUFLPKk4tFBVoCoHyonplt4u2VDb54whgzD47x12J+WhSi1t2Z0FsAG?=
 =?us-ascii?Q?iYydHIG5edQNpw9FEp8oVt0GXkriW/Hh8EXHwhwBD04pG0CH5f61taFwseuV?=
 =?us-ascii?Q?9PlU6xSdeXZ8R0bOUf3HypTjAlq/5zStk+DbUq8P2NFO4I+Q2PNazvvcnUgX?=
 =?us-ascii?Q?FuxzRlqd5+pW5tReWH/+/sngrmolP/mbCT3YyeWqEx7srZtPT/jEA5x9HED0?=
 =?us-ascii?Q?loBG/mozNbDHq5Pt/8lcquyP09crvvF/uq2bEclxI7cZXKfHLDVAeAld6xGj?=
 =?us-ascii?Q?crWdbZGEiIQYN39QyDj336ZlYX3tvH/dh8qHL0bIjh8SqeMbzLe4wu/c53x7?=
 =?us-ascii?Q?gJ0YZwCP9ZwPTW3UVkYgWO5bkWpGflbHkr4AVcAEgNyYH39Nj6foy5TYS1j/?=
 =?us-ascii?Q?eZUliDlivjjFckBw4ZNqiz2EWZDa/e7quDa4cWhEK7dHe0RXvzor9bvWlhMK?=
 =?us-ascii?Q?Pr9w3YPLPryA6CT8sfsRp2zH6N5mYWUKFP5Xl20wWN3Gymba3R+WEHI8OuiH?=
 =?us-ascii?Q?yybCb/5qrPwTvYebfKs1KJRer72dLh4n+EJkXIWyjP1kggBBlYtZ7ug3qvKp?=
 =?us-ascii?Q?5dGEng23rAIBeHPKbE61AqKjriP4NPziEXCexPXDBCzfk+/0mc2cSIk+7Me3?=
 =?us-ascii?Q?wysDZSLPlI3qySY77//+WY9AYky74m2Xao4K/oIUHDD+9OUk+lKWvAlY4VBu?=
 =?us-ascii?Q?muTNmDACHWrmwT8/uW3fbcw3sJW+TmL/8EetGIfYPDBKgrrEeROuhOxdJx15?=
 =?us-ascii?Q?TeH94d/FwUPsnNkMYjZVR8xM48U4dXdJetI3bkmW/cKV5KamsnMkbQ4D9feJ?=
 =?us-ascii?Q?b/rj7CuBxfEGX8NMTwNFAHGdVgMbqjMlJGRfrabYyM3QXo7uwMVRebn2P++2?=
 =?us-ascii?Q?WtzuhOyzMjHlwliDsZ8OsaiWp1ry93R38X/CxCPmD4ExxNoz9pCqv1iEN5Or?=
 =?us-ascii?Q?zdJiWLlV4q9K3XYGfmaIIeVvVoUUWhvLt+YgU3kBMjbJhx3DnZdb5tP7B0yn?=
 =?us-ascii?Q?EvHtJ8Y+4iYRzGWq8F4OUgvjecIHrLzg4syC5Y9qia+RdkXYBIDkFh/3IXax?=
 =?us-ascii?Q?65wWDkoqt449Q1gvgjJtVT+y+8qTXgTV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Fpr67X3fSVAgodmXXke0nJvxgmtcNQ8upem3ZDWTYkHE25MNa8f9zUyJKCr?=
 =?us-ascii?Q?lwqobcO2wwVdX4MPj6K8VW/1hAm99aOYRTWAqckwjZhU3hidByMl4MFLkG8E?=
 =?us-ascii?Q?kQqD3cygnKRPR8YGeYc/FsiZ2eJluW5P7px6C6SC9e3DZ5Q1vUCIBLD6TZgm?=
 =?us-ascii?Q?cJDnTdwEiRY5UGPvVcXo0MA57mb0JdIuY36IfWREhTaNtnbn2s/ULgQbRWjA?=
 =?us-ascii?Q?lFhdDh79kiq+eS5O/0SIagSsq/Q62oM+S+YTbQYAACOOAwTxcko+XpaJMcw+?=
 =?us-ascii?Q?ehi4drApMUntSdixsf6j4ub1m4+TEIH/o0VEWz9vKVsCLwBws2OwCiGvv7hd?=
 =?us-ascii?Q?RMD8ktwXQNTOJSaUX3J3mRP6CuxQZTHFbQDPIe59cRfeHSzW1nhJg+MyNoQi?=
 =?us-ascii?Q?1ak1/mWZrgmGXnEvy2DScYet3/KVM93PYCnuV0j+jVkwIsDn9kfTCJ8k6/GR?=
 =?us-ascii?Q?8ddyqLBLnnKEzRnG5g3LvzNAe35ICObGIO2v80wpSFFaMULAjbgpzJZT+FZr?=
 =?us-ascii?Q?rHg9LX49R6d+u2jrvNZRVd419O30ebiHP+429fIwtDB/6A9WgiFqSZsofGxb?=
 =?us-ascii?Q?Ji7KfvRhMMirD+CNdHdN9/Ews7d/DTAzJfQiMvzhXeZ2XCn7XMyruodb7nvz?=
 =?us-ascii?Q?fB4sVu/uEf12nffcBkELk9fy0yDPGybRWZZByWCN/wWVdr7N0ioVwAHSEfqo?=
 =?us-ascii?Q?kOAT1zeelMHKKI1Cn7pLckUSV0uDNu4frXPF1pOF0iqN1r9mNTxhET7jJLUu?=
 =?us-ascii?Q?KHS9fmtfYX1k8yUTPyR/9ePbO+ovV/KRININnYoQce8jqf7hQ+1Xbt1KiVik?=
 =?us-ascii?Q?sG+bIwvZuKfeBuKUcXk0586C8J9e8UAr6Gpt8UmRad/Bte268k/LTWaMp3Kj?=
 =?us-ascii?Q?0sXnUQVdVbv3F8LXr49+QrDksw8PRg4N0WAe6HsKrPryp9Inorjg2Pi5ykJQ?=
 =?us-ascii?Q?pB6ElELtzIiODH4/9L2yjLF8lEJwGVJsATn98xYTGOJG65g++R/ex+o97XSk?=
 =?us-ascii?Q?uC0y2TZ5BziR+2ymBKae1sgC+dJZXt0RybEvY4bO+7ntzrr6uKmARZ42nrK4?=
 =?us-ascii?Q?9EuQABJIAdHWHH8bHwZDXF0qPcL8Xt9nZe39nxIM6hvcXC56hWGkynbKPQf2?=
 =?us-ascii?Q?Z3dYT5kRhtIR+zXeOqbigBWkpCGHHY8bIEvK40gA5Jyf0aZ0En8wqy5+HWI2?=
 =?us-ascii?Q?eyL5ODHEXkWniLMcCQjU6m2qTPHQCQScpHp71FwqQd5wuxb1q1NJicnzKQby?=
 =?us-ascii?Q?7e8hVQaNwYWpbjDRNREBmAdIhyFXJql5RoMQ9Kep6KNo/KtcRtoSU1JeWQcE?=
 =?us-ascii?Q?LwEEQ+4ozwwIXMgxOf25q3p3ExT1Hg72TqxdnM4rivwjwe2f9noWb8zk5nTH?=
 =?us-ascii?Q?xm29XQw+k4eF+JJ0riVpy8utE0Dch+H48YnHJLlo02Sks8zNwJZAvM+HwvO8?=
 =?us-ascii?Q?u04RKfhdUxSIz4Iiv8f2oBZlS0TQGwRDBzZVwLtuDgoMvMvLRG7dJtnFhvvM?=
 =?us-ascii?Q?gP2TPoQmh1c3Z7ti9reiFz707L6VA3pKWC5QRMCs7+ocJjNsy8ige+A1Qb0c?=
 =?us-ascii?Q?S6F0kuPZOS4won9TorRgetWW+fvP9nSPwibPJUfL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d58132-0105-4b73-5f5c-08dd55677a47
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 06:41:47.7446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BYYR5eu1JZPEH8/r4O0DPhIIHLSoB+iAL6tVkcxcSZX4f/2NSbtvL2+bDeVe2YAGBNcWWPXff5O82OUDJdjv8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6246
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, February 24, 2025 4:18 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
> dependent parameters
>=20
> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > For every commit the dependent condition for LOBF is checked and
> > accordingly update has_lobf flag which will be used to update the
> > ALPM_CTL register during commit.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c | 16 ++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
> > drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
> >  3 files changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 1438e125cde1..83719ee1721c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -312,6 +312,22 @@ void intel_alpm_lobf_compute_config(struct
> intel_dp *intel_dp,
> >  		(first_sdp_position + waketime_in_lines);  }
> >
> > +void intel_alpm_lobf_update(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	u32 alpm_ctl;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return;
> > +
> > +	alpm_ctl =3D intel_de_read(display, ALPM_CTL(display,
> cpu_transcoder));
> > +	if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {
>=20
> You don't need to even read the register if crtc_state->has_lobf is true.

Thanks Jani for review.
Reading register to get what is there in ALPM_CTL register, like aux-less o=
r aux-wake alpm and etc.
For LOBF we need to touch a specific bit, and don't want to modify other bi=
tfields.

Regards,
Animesh

>=20
> > +		alpm_ctl &=3D ~ALPM_CTL_LOBF_ENABLE;
> > +		intel_de_write(display, ALPM_CTL(display, cpu_transcoder),
> alpm_ctl);
> > +	}
> > +}
> > +
> >  static void lnl_alpm_configure(struct intel_dp *intel_dp,
> >  			       const struct intel_crtc_state *crtc_state)  { diff --
> git
> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 91f51fb24f98..c6efd25c2062 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp
> *intel_dp,
> >  				    struct drm_connector_state *conn_state);
> void
> > intel_alpm_configure(struct intel_dp *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state);
> > +void intel_alpm_lobf_update(const struct intel_crtc_state
> > +*crtc_state);
> >  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> >  				  struct intel_crtc *crtc);
> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 26aa32d4d50e..44258ba0d951 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -37,6 +37,7 @@
> >  #include "icl_dsi.h"
> >  #include "intel_alpm.h"
> >  #include "intel_audio.h"
> > +#include "intel_alpm.h"
> >  #include "intel_audio_regs.h"
> >  #include "intel_backlight.h"
> >  #include "intel_combo_phy.h"
> > @@ -3621,6 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct
> intel_atomic_state *state,
> >  	intel_ddi_set_dp_msa(crtc_state, conn_state);
> >
> >  	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> > +	intel_alpm_lobf_update(crtc_state);
> >
> >  	intel_backlight_update(state, encoder, crtc_state, conn_state);
> >  	drm_connector_update_privacy_screen(conn_state);
>=20
> --
> Jani Nikula, Intel
