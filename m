Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC765CD7A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 08:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86AE10E082;
	Wed,  4 Jan 2023 07:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EAE10E082
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 07:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672816021; x=1704352021; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=eyaTYQSs/VdY7j0gTjoADAIMXHEJqMt2LobjoRa3Ttc=;
 b=HBB+LrFa3yKF7vkflMQG6cmGt/S1d/JPGNsnwhp7as6BWJ5R1ixY4Kwj
 VZoQtF0Z8JLBXUL1CAut5tEaBHOKY/xQ4JdLssxzlFaAptB9q1x8Zh+ON
 16eWdnWechGHS3ozM5wSq9uAzToeTIpFyJqET0uJZyM5lbJCcqnSE68dr
 TtVKjxOQFcNNo9TEui5w35i657Byr/2IDomC/NcS5q5x5AmVU1N5qlWk0
 Fe3zVQpGscIxcI+TVBTjh4huUeP5b8c1XIyJIQYkRKIS8j6fi8fBokFXo
 PQuucVRU8qX2fFEmgZ58TbdO6TkjasiKbJG0bUV1AaHs9jxQXaAYA/XR6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="320570734"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="320570734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:07:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="605086847"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="605086847"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 03 Jan 2023 23:07:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:06:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:06:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:06:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEpxDbePflx/am8BFSihUjUHJWRxieHMGXljFMIx+n1W0RzF88stGSmvx3THBanWWBxkE/NnRiDl1ThzTlEJOCfqM8UImzcpC5BtsXpuPdHb4tReJrYpE+9Lr7Oj97mF2A8onjTVdjJiPQXxmdrpyQVKU6CFiCSLwL3nZBcUJto7Rrdn6+gMqche6TqYt4aP1E2KUqcXjbABF/LGDgW53xbyvHYBKvE2zI9NYgr9dk2DqXn6P9No7sa0uqP+rEh95/ZCsZkFFZ2dlGa5wCF6Yrjobv8b7qHQZyhX9myjUlDVih03P/SP5XeBGNsKhwBjRGNeoCthSJ6gkTlZ90s+VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eyaTYQSs/VdY7j0gTjoADAIMXHEJqMt2LobjoRa3Ttc=;
 b=S4A/1L0xQA6W0E5r9282NalAwcpkaFOJw5Qqf3O1VwPugjptRh7sMAxZWa54vOKOLurXFbBGSX8QAcOUUy+3bzal+8nBnTdD9EBWo9hwm+Ye/2n2xurKCWkZnw2/ipVIxR9g3axRhNTM58M5u0SQX01elUaQcd2QJU5tPuSQpiEClqJpM8XhXkEdbOumqwqkGtZP3QC61Krdx0raRWcS8I8/DTYrdFzcg5Kx8s5Q1W2HlPLPzYDM3B1eJqF3JJp0MOIXZnM0Reyb2mUaKSvMb92qUrooCSP2/SjhmAdnK/rs54aWuqFIEaU+Wokw5lCB5jvs51zDrMTYBQaxF1n08g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB5381.namprd11.prod.outlook.com (2603:10b6:208:308::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:06:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:06:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
Thread-Index: AQHZIAshkekGECf4eUeNA2OaEVai1A==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Wed, 4 Jan 2023 07:06:57 +0000
Message-ID: <PH7PR11MB598144A465969B9863D5D0E9F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB5381:EE_
x-ms-office365-filtering-correlation-id: fcba7d75-bb78-4ab8-0cc9-08daee224476
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U/0wuObWblfEPOD3awmiKJlM4SvEphBjKo2ju2uzdXE3ZaK8p0q8jTeGUCfaiU0+3nk92+wRtTmoq0NPrEamT8l44Om9eOTATF3mK1XCrfd2tPf9w86LVdKNWdUK7wvfRTrqiclgf6PPXDxAHXwRqMwTnVWd05CHD3eMrYKsuz/2JcCNBF9x7wS1opXkl/N3Lp3fUrgCOJMKKZqJn+uQnq4FdZy6Nshw6AhBzGmTDf6yCkMIcsCZn3+MijNyLFy2gWGqpqMjvV1WgpbmU7OMmG/3312waB063VYqLRmviJ/8Mooi8HPzhijsl+sNuM8Y/wVzOuvFEPKmAQifFoHY6RnW85xKdgAFQFsGs33pqCC7znLxZZPN4kb8iPwqbZuWLtuQMAXN82dItAMkhBKFeaeb11Mm4Fa4ueHzQjM9mBHplaaapHdMHMOpXdWfKkhGdG7btq8ywksd6IV7GwoIE6VyluDxdGLAmfEpT5LWu7X8OeDo8b6b8Sk5e+AzKT412iCl1+jalCWr5iZVwKpS2+RaOveQ7AFUomzMBZhS+5nnoTPD7wn5nEajwYiQslgK/GKQqsZkfUDF3Psn/cHTCto/r/OLyHvhTUbAqTF3SBzjNS0qdmxSqrT8SzLXVicVSlUVUU2ZmbwPXQ4SfJudiVJ8SdLKSXlE+tHnRCLkBWGzoRlBxYWulyvZ7kETWUUC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199015)(316002)(38070700005)(186003)(558084003)(55016003)(26005)(71200400001)(33656002)(478600001)(9686003)(7696005)(86362001)(6506007)(55236004)(110136005)(2906002)(41300700001)(52536014)(8936002)(83380400001)(5660300002)(66476007)(66446008)(66556008)(8676002)(64756008)(38100700002)(76116006)(82960400001)(122000001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xhJ5qavAKiIs7a+/Kxn+42Y2YA7RBNV18Ynah7aKDC9DGjYS6eljloQ8ScT1?=
 =?us-ascii?Q?P75xtYSnWtVU+FgoXwcpM3icm9zgfEEb8BNLK23UUJC5g9hs7I6HOUWASNRr?=
 =?us-ascii?Q?dB/+ZUSDwYhsqK5Bta5filn98YGn2Hh8Zbsxs7ynvjThI0z7RSgCrnnJqXab?=
 =?us-ascii?Q?qR42Te53n6+WSW8vk6eKxYpCWMhTb3rsTqc8e9Y4rY4KzOkEGrks9Tyal4J0?=
 =?us-ascii?Q?4Gy1IPLHA0AodAcF41ihN5Yhwebmk0UF+ptv8sAWUnJoSucL6XQPo2TThsxd?=
 =?us-ascii?Q?07264YHUNuG+VT+FFyYqnUcspl4iNI3A3JOxeEFBW0iGQd9kic0TLKLmUPQi?=
 =?us-ascii?Q?Kf5L8wE1mUm+16YeucsA+pI+Qwqxz2wh4hHs0ohfVDdO9LLh79bKxpwNn9M0?=
 =?us-ascii?Q?P1b1gNRrjOyvinW3yL3XfgSBpT1vG42ZLAPBiQ4vhNKB/NoW4Pm2X2WbN/1l?=
 =?us-ascii?Q?qdeVvUpxUg9dFWNgv67PJoA9EQ4Pj9dLeXH93vQfs9zUrIDKEbtmaZgQCG6N?=
 =?us-ascii?Q?V7hbdHm5Bki4lAslBHhDyl4O0/XggPN54pFNCUATbH6Ei5fWLUPfnbrMcd42?=
 =?us-ascii?Q?063Sog1c4JoCuyRQ/tSXSM9s9toxrnAI0IdbhjSodwducNMMp8mLU8pECUA7?=
 =?us-ascii?Q?sgcq7pWpWwY3GniUdFFutnz0U6hG7IG897iKj9NOb8f/DCOh3g6HdXXk5V0c?=
 =?us-ascii?Q?dbJnpFyslW5PMnU7GG2ivNmaJcuFsQzWvPlA09Pxcc87B/O4lMOaNFQA3Pg1?=
 =?us-ascii?Q?bdEKzD44Y3uZgyKjqSLTKYN3bw6J/i6u4GswEcYV6XtH/pzey21z3HNzMAjD?=
 =?us-ascii?Q?O5Babf6MmkNvSeQ3e1/fBJcRtAwITvT2nktKd/hjq5d4LodSpiwJEFvgLCmF?=
 =?us-ascii?Q?m++nEHHmAA437HAq1PEQF+jS9Yuke7dJvcv1YKTztbU9mCNxFKfaTrlpilDC?=
 =?us-ascii?Q?8kpsbgMc2K9vzTzjD8XtXGLtDVHQdIlynFLN1/An+62cPF5qTMCXTvPB0vOA?=
 =?us-ascii?Q?y7bWPmeIcHGZkVS3ncxVbQjvFHq/HUaD7Zb6XmgA6G9f03d8XExSCMro2Ysw?=
 =?us-ascii?Q?QWN1zz1GSIxtftv3uh2F1Jkrpp7lB7U++L5goyh9csl9sUFinDoZ6sgB+B/K?=
 =?us-ascii?Q?9Y8OEc1jZ4R1788GVJI3OSLXRXfamp7gQQOnenlr28S+Gzn+xD2I3YKpvrc0?=
 =?us-ascii?Q?RLGBat96jcpO6kd+PRN5fVcf8MTAj5zzjczLy0+NROLiY2oxXVKLndmCFbYP?=
 =?us-ascii?Q?D7s9qCU2uvjeXFlbINlYX3idvHwumtyVxFGYLGoIexEpuQ9Ar4W+1iMtXage?=
 =?us-ascii?Q?TGOwpJ9zZaGAeP7+vlKLva++XqVF5ZGl0VUo+Uk0HStBhNeA7T1OVrw1o6b5?=
 =?us-ascii?Q?RZaAIagbY1McC8ktBF11SkbYzwX+Fsp79KcggBl8sKiGiZJEeyxiEMbt7RSD?=
 =?us-ascii?Q?kOm08mBIEtWmPwqllc+Lz0dUfsO+HlXyIe9svl5HnYO+s3COqoE/DgrEogHH?=
 =?us-ascii?Q?/zssUS0+gd7BQBXcoiomcUmNp5n5E3WEynXt67swU6pVu7sCm4R8dEVLhNkh?=
 =?us-ascii?Q?Z3WwAMhioWOWRjogJ4fgbGW1/DsFGtv+DZXD2dFk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcba7d75-bb78-4ab8-0cc9-08daee224476
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:06:57.0608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KHvHHMSQy6iptFEfe2WeU2D1xF4OeRrvBq0TohyMlj+KX0QOgyCsYtGpXFvABL+vx16dokxOYnI0M4KA0opbcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5381
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Recall: [PATCH 04/13] drm/i915/dsb: Fix DSB command
 buffer size checks
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

Manna, Animesh would like to recall the message, "[Intel-gfx] [PATCH 04/13]=
 drm/i915/dsb: Fix DSB command buffer size checks".=
