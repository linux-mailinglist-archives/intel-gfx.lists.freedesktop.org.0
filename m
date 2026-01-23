Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELCkDqVRc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:47:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B45748C1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A7A10EAAB;
	Fri, 23 Jan 2026 10:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sv8nuQ5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9057B10EAA5;
 Fri, 23 Jan 2026 10:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165218; x=1800701218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cNQMaPVUau9z35PN/OteeT6srFI4KZT8Yf/UM97t4Ao=;
 b=Sv8nuQ5xD4f3nseAY4hGgvuna8SCB2rcFKVXsUW+kWOhv/JjOT7rdpvF
 07s1P+mPHrMxibwWInFz0qi2VKXrrqRiq8p1s34Bx26k3BTiV7NKVeRvm
 ABnhKymr8KNvrQDez67mCiBAEOPy93DRx8e/n0lSSgpZ9JWu+o5nFGicS
 FtnFyr4ZMJu8Q3MSzQo78D0bMpKEC8iQqA1UnNQmUPAtzobbvQZQexmMQ
 XetFX4X3ATMr4WyS+DPJsgRbmZmBmGYTxCFqBfs/jDbOO4Xhs02QT+L3T
 3GD2pqC7I1+0emWJ2o4aBgLlG6E1Cio5ypJeRE3PyHzqvPyWK+WGoHwVy g==;
X-CSE-ConnectionGUID: v0e01ThXT/inE2FDHTmKUg==
X-CSE-MsgGUID: +9DGgDb5RQutAoevTkkm9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74269368"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74269368"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:46:57 -0800
X-CSE-ConnectionGUID: jU4JvMKgRxaq7aghf41UNw==
X-CSE-MsgGUID: rn8urjtITlqsDbDHwqaksg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="229958233"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:46:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:46:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:46:56 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:46:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mF9x8lwEHLBbVF0xeAIikXl8t+oBkSEOTWMqhMSWt27OC7wQy65R7oaaZRaPOb1vqXxbDVpzJDQNbAwjcqyx+QCWjV9V+b5nIq6Z+F5Ptq/6RlM2WBBidmuMRtpUbBVYElzEu+FxDSf3ysifn8bSobyghTatY0Xri9DmYCRjp1Cptvgwh1C5vIElqXJ/X979wkHX/qs/vSSm92cXDt9DpinQ5B3xJmYrhz8NWgztgahqVVNMVcdKjqTd8znyf58ORXLjbYXwpMkVwl8bKM6WK3j89puJf7V0HNBuPUGd9vS1TbN2XyPLmDwOvhnTLvHGtmA1WKyu91tsfsa4nqHSZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NAVLka7WcSflq/GnMYAwXbFu6BtL7WZQcrgsXpiwMBc=;
 b=M9IpPJmk7CsD8DY4GhJeli9AqnJL6mv41kwIYNBZZNqbtM5QgW1gmOqKOgJ0AEeHdPE98RPALAlg3ARFxTjqUAzH9yT94fet+eOJTz9xIBGSa0lS9PW5Q8Vtu3rC3ioS25cHANUYVuxIRLa2XHc/AHZU4HeY9CqYRnYrYOTCmhSUSlqNSUl3qVc5592sxaaO9Oy1G+wxe3lQg/2DkPRgJMsJ3Wqy8GHBKgHLshWbnQ3UvG4U8PdyKY1aMU5TpquuBu3IfSZbEe5HjdhVcnaiFkRiY8/qQi48q/6p4Zn4LWd6LpHoQPk8gHPS7TUk81LxoYoD9Rs0JZyf/I9gs6mOmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:46:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:46:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 05/19] drm/{i915, xe}: Extract pcode definitions to common
 header
Thread-Topic: [v2 05/19] drm/{i915, xe}: Extract pcode definitions to common
 header
Thread-Index: AQHciyrnWHfAnKC/LEu815TGZ8dhzrVeExCAgAGBnHA=
Date: Fri, 23 Jan 2026 10:46:48 +0000
Message-ID: <DM4PR11MB6360616E515FC736853A5BF9F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-6-uma.shankar@intel.com>
 <fa1c7427e6374b2ed22312e5886c6b6755e1d5a2@intel.com>
In-Reply-To: <fa1c7427e6374b2ed22312e5886c6b6755e1d5a2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: efdc76ca-337a-4618-dfc6-08de5a6cb5b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oun55nE+HxK+rdjNIS4cLw+Nbo2WzCrdd+AT73MjO6UHTVeEqBLwUzvXyN1r?=
 =?us-ascii?Q?2inPqmjZe43Mk6mwfm36Hui0cVC0ibWuG5yMV0KnqWe4zpj5ozUCEOEkPqER?=
 =?us-ascii?Q?hiYz5rogMH2pAiIhIAYbG5oZ8wf6tGAin6hc5+DBuR6s1EZwvEhZLj2scxwo?=
 =?us-ascii?Q?uQD/5bw9SI5PDcie0FjWpDUt1vRrdx7VJHV9hh0xV5plnbwSSDR90CQuqxsJ?=
 =?us-ascii?Q?y35J9j3zynwZ8jwuhrI9OQLD9Q0TbDgJnG11sbZjJYxhxENcXwwAvf9jVd5a?=
 =?us-ascii?Q?2FXyP4Nnje0QJnzwQgE2V5tQkZq+fHK5Qx5Eqh6oCyh1Xwnkra378UYGu1Cl?=
 =?us-ascii?Q?RFhdVfVDMshlKjaq3/GkDvwufGCwvcz8Yy4/rO3kkkvDL6Yr7do6NPSSwhlH?=
 =?us-ascii?Q?nRbdtaHqbsmo9pAn7YImb9LHuhSKfb9FCyxmLOJj/oLU8M/QOtsoY87YfqL2?=
 =?us-ascii?Q?hzlNzsEDeiP84uESDlPKW4uNjJm6NoTuCbbeahbi+0ZRzWi4iCxcoMjDTgcM?=
 =?us-ascii?Q?WDaf/opE7BslDC0bQVSfb3UYP1toc282YUEjDI7gL7GekQwo3AkKm7q1jGRO?=
 =?us-ascii?Q?BBVQ7KogYQOyZsQsX9mWxAIss/o8/ZcCFpITpcxH780/FTspXcNfBNcjEI4T?=
 =?us-ascii?Q?9PgKmO9WaPYLTyP0CFS0G+xlz4/wmTR3a/cEOqXei+5HX1vuEeUxwlqNmew2?=
 =?us-ascii?Q?IGeKG3quvhyCyzYDGSbWsktlHGVUQNmf/c3Uo/Ip5EozkcBKg/P6KkAIJ8xD?=
 =?us-ascii?Q?QTeT/+uzqNYxRjFtGXjnFpP5u19Ywt8+RsKFVrr4L+4w2dN/O9fP1R423wYx?=
 =?us-ascii?Q?AeNgL7nU18SvcIVut9F4e01/iFswmvajSFl9y9zf91LceNRWGw6zhGDicLcz?=
 =?us-ascii?Q?BxtSSoVX8qjJB0ZnEyfGW1j839gFJ29N2ZROTXSSo4PFyhO5JSLJ15zYrrkq?=
 =?us-ascii?Q?ougtbtPK4mHdlXjplcIj9W3Bl7VVvkpOWV2nVN0cZkePzPfSw9mqgYVDE1ch?=
 =?us-ascii?Q?qGMWeeyt/lv23RIjoK7SlgZ7AUz4+Q3LL5G/zx1kPTbZsMEuEtJoBP93tmv1?=
 =?us-ascii?Q?p/EW6TkVUtYu8hoxXYXspEeL83q0aPRXwWV3nAJJwcvNwGPqUC8i0o8a8j7N?=
 =?us-ascii?Q?yX49UYftMU6LcsNjdvppt0ES7nQKgYVKwjAB1Xzr8CpOG3rLMvP5MDfl1Xit?=
 =?us-ascii?Q?JvRZbyibTpjbO5eYfN0zr/4LWZ/CtayYHfTETPMb4R2ftDm04IWuLLsBDATp?=
 =?us-ascii?Q?eY/JapnH4QvLP4kNIZjNaTP1ybXWUB5bvGa4kod3nQnLbsi3UMV92UBZo7E0?=
 =?us-ascii?Q?XLXfmKt2tOndtiLQLW20+v8PfV5iIXoJ5tJQc5tZS/GWUe/yH9rJ8hKRv14Q?=
 =?us-ascii?Q?2/5d1jBvkothZfFdJeKsDeOb//5SpmmSaszpGte6KtVkL3QT8OBncimvlEWl?=
 =?us-ascii?Q?FkKjvf232cTlliHwDOCjLUUa4uVAfWLbgNWcfamlasuP9EvVcJOP9/JWljq4?=
 =?us-ascii?Q?/DY8T8DKP0FyOb3CwWvGH1WkkwF8FKWpH6saymZ1zTue+YqPD2KhApxm/V8Z?=
 =?us-ascii?Q?/ZxBmfQk9Wmf+mt2JPVRFMszxSkh+E15RaGaLDy4tERFMpLTX38JTRUG67Yu?=
 =?us-ascii?Q?PftXgNPuFgBpnjqSd0DIlNo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JFY0MrzLryU6oCKH3utsMaOD/coHJGBpKKh2XdUAT42htAxzNRXT2tV2Dotq?=
 =?us-ascii?Q?iOCArlD0hJDPlronZ9ZMPgLZ/LW1zdURLBCWxZAUvdqAryq2HkEgOTtbn7Mg?=
 =?us-ascii?Q?Bs8M3NKQML/292eeX7jJzf/pNlTIB5Df/5ctZZa6Ua09VeRiWMX1Gq/FVxdi?=
 =?us-ascii?Q?/Q86+gowtdCId1VekK9I7ZffYLpM9i+jLLZWg2lg3gMHXLO0dR+5xRTSs87R?=
 =?us-ascii?Q?5qbwp0TVBDTJtI36snUwf53+i6NZAFBqXG6eJPP4G8qdCZjAFBXo+DzCqGxV?=
 =?us-ascii?Q?aLeS4NsemKdaNakZf7oNwzlIUlojL8EJ3JcVjtI4e7/fYIb9OQb8DnASV3R6?=
 =?us-ascii?Q?TmwvVSDxlPiWz1aKnzS/1ALOdVvo3i+3CAOzNsIAO8z+Q6td+bDISfpd2yqU?=
 =?us-ascii?Q?a3T7mO4V6GHfnNGRUndCSwbAqG36Z6fdmec4lHq9hNamdbrbcC4Q4hbt3xkj?=
 =?us-ascii?Q?zVdt0BnPv3ow5oN4K7ZFYS+ivw0kzcpGLxZ+Tniw4s0UZqXv0gdCi7ENGMWX?=
 =?us-ascii?Q?TG4WPU4YbIb1GAz/ojXulbB0RbrmveE4gesFYlwhNvQLpWu20RVkRPaQyA4F?=
 =?us-ascii?Q?g5gWqknd162v1mpfnrqIZor1XfpXlFsMycMPS3OvlkbLDjz90Qhnez+PFxug?=
 =?us-ascii?Q?X3MjtlhFduIaaBzo3HNJPiM6JJKuJbz9YMavNunob2Hw/yQ0pOFjafJHBTto?=
 =?us-ascii?Q?6MaAgvR8ckGEDLQ9Vm6GcbkktaNCsjE5i5qtYdjxZsl6V91qzB45Gf7zgbyV?=
 =?us-ascii?Q?UG3e8HYwSbHcFLGtuX96T1ZappAzIjyZZvV5chdehSKfLR7tahQrrWuxaNWf?=
 =?us-ascii?Q?w4apxNsGMq1kSv2qrMMj1ers8mflkAzRuDqaYQfYSpL8bNigCAYGbZ8ukE/S?=
 =?us-ascii?Q?fZvUMp7szbltVhWPcnJlxfD1ugZUO431eCRGtllQviBqnesWeINlIla3YfDs?=
 =?us-ascii?Q?SapU+8fOu0PrersaBlTmqouz44aFNdnKz37hAGik/rhOrsM8zbLnH82zZRfB?=
 =?us-ascii?Q?ro6iU8IDBtGkFgqYwPB2SUz4bu+fAqEHFSA6XuzzbjS5q8yXPw+8789iUms+?=
 =?us-ascii?Q?+fRKjCeQRZAt9BfMUZWcejtKn7SKEoDmGRcG06LMm6yowtc8s5Y5R90lpNfO?=
 =?us-ascii?Q?b2JcgAbuG2SKWlPlkKEeNJekvuvyhdlb6fDghcRLjbNpDTJp8lnt/eiFJDhP?=
 =?us-ascii?Q?jC6ee4R4dPcPCEQxCNgOSUvlTdGC+tJYjpvyJ8ND2QKbhayWsGIMAAkTP28T?=
 =?us-ascii?Q?mvL5fEV2kBIuX9QYHq1fn9dhIrPnDH3STx9ry2UQ7+i5HmD9A7RLqh/CPDmB?=
 =?us-ascii?Q?O28g640JvjQRIBsIeWum7h6CCz318eZ2y7hJZTyQKeKWp510DkI74W7aXc8S?=
 =?us-ascii?Q?SdAudRctNAQFeL//AhIUMuK/sL++yQT1bWwVsMon2kVRWqVSZwSNlIl6JpL9?=
 =?us-ascii?Q?q9BInBV4I148shx6HHyDif4GRZfy8Ww/TNkLAjG0bTVeeCtyQSKETKpJwT4j?=
 =?us-ascii?Q?SuOFY50yuBtMAC3t8pmmoPD2KkMhLkyy33k+zYVfyoIO0xU4acqTRPvpO0vX?=
 =?us-ascii?Q?y0cnJCzw5Hk5vu21I5AY3iRDlfkJgwaj9IRmq/P8XNZ/PamF3TrTmI7qjSxK?=
 =?us-ascii?Q?5b/taHiGOPEey2hdcqm2hoQnXiS55CEqpNh2KS435Fi9pDdJsNXIq4tr554G?=
 =?us-ascii?Q?ZAlMxFoUO1elQrlc+GCMRgQGAPMA7/zQvcYpmJ6j+HLw+hZtIb6D7zL4MDI2?=
 =?us-ascii?Q?RnmSnfVIvA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efdc76ca-337a-4618-dfc6-08de5a6cb5b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:46:48.4130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1rjSjQD7SUq7olRPMhMxDHDd6YLO8VVJLHY0RtsJTrceNn+f68VL2/Y5hBl7zLqi6TEPAH+ZwRJQrFYpp/CtOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.982];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 98B45748C1
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:16 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 05/19] drm/{i915, xe}: Extract pcode definitions to comm=
on
> header
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > There are certain register definitions which are commonly shared by
> > i915, xe and display. Extract the same to a common header to avoid
> > duplication.
> >
> > Move GEN6_PCODE_MAILBOX to common header to make intel_cdclk.c free
> > from including i915_reg.h
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c |   2 +-
> >  drivers/gpu/drm/i915/i915_reg.h            | 101 +------------------
> >  include/drm/intel/intel_gmd_common_regs.h  | 108
> > +++++++++++++++++++++
> >  3 files changed, 110 insertions(+), 101 deletions(-)  create mode
> > 100644 include/drm/intel/intel_gmd_common_regs.h
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 9bfbfbf34dc0..531db1b452d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -27,9 +27,9 @@
> >
> >  #include <drm/drm_fixed.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> >  #include "hsw_ips.h"
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_audio.h"
> >  #include "intel_cdclk.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index dc13f9eb4cd7..35122c997b8a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -25,6 +25,7 @@
> >  #ifndef _I915_REG_H_
> >  #define _I915_REG_H_
> >
> > +#include <drm/intel/intel_gmd_common_regs.h>
>=20
> Oh, I also dislike this, because it becomes unclear what needs them. The =
benefit
> from more granular headers is that only the places that need them can inc=
lude
> them, and we can actually quickly check what includes what instead of the=
se
> indirect dependencies.

Noted, will fix it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
