Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C019B4957EE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 02:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D94210E62B;
	Fri, 21 Jan 2022 01:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 605 seconds by postgrey-1.36 at gabe;
 Fri, 21 Jan 2022 01:48:16 UTC
Received: from relay.hostedemail.com (relay031.a.hostedemail.com
 [64.99.140.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6AE110E590;
 Fri, 21 Jan 2022 01:48:16 +0000 (UTC)
Received: from omf06.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay06.hostedemail.com (Postfix) with ESMTP id DAEDB22DB5;
 Fri, 21 Jan 2022 01:38:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf06.hostedemail.com (Postfix) with ESMTPA id 3264F20010; 
 Fri, 21 Jan 2022 01:37:54 +0000 (UTC)
Message-ID: <5da3e02454c8c9ff3335c7199f3ae48af2864981.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Date: Thu, 20 Jan 2022 17:37:53 -0800
In-Reply-To: <20220119160017.65bd1fa5@gandalf.local.home>
References: <20220119072450.2890107-1-lucas.demarchi@intel.com>
 <20220119072450.2890107-2-lucas.demarchi@intel.com>
 <YefXg03hXtrdUj6y@paasikivi.fi.intel.com>
 <20220119100635.6c45372b@gandalf.local.home>
 <YehllDq7wC3M2PQZ@smile.fi.intel.com>
 <20220119160017.65bd1fa5@gandalf.local.home>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Stat-Signature: 7rtkhruhzyxmaz9kz4md8szkb6csicqt
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 3264F20010
X-Spam-Status: No, score=-0.98
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+2KBCQ3/oG0QJHNmpFhxNu1Bw+ZDwRWLg=
X-HE-Tag: 1642729074-280175
Subject: Re: [Intel-gfx] [PATCH 1/3] lib/string_helpers: Consolidate yesno()
 implementation
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
Cc: Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 Kentaro Takeda <takedakn@nttdata.co.jp>, amd-gfx@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Leo Li <sunpeng.li@amd.com>,
 intel-gfx@lists.freedesktop.org, Raju Rangoju <rajur@chelsio.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Julia Lawall <julia.lawall@lip6.fr>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Mikita Lipski <mikita.lipski@amd.com>, Eryk Brol <eryk.brol@amd.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2022-01-19 at 16:00 -0500, Steven Rostedt wrote:
> On Wed, 19 Jan 2022 21:25:08 +0200
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> 
> > > I say keep it one line!
> > > 
> > > Reviewed-by: Steven Rostedt (Google) <rostedt@goodmis.org>  
> > 
> > I believe Sakari strongly follows the 80 rule, which means...
> 
> Checkpatch says "100" I think we need to simply update the docs (the
> documentation always lags the code ;-)

checkpatch doesn't say anything normally, it's a stupid script.
It just mindlessly bleats a message when a line exceeds 100 chars...

Just fyi: I think it's nicer on a single line too.


