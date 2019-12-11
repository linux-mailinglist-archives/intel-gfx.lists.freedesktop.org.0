Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA7011DBB6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2CB6E0FA;
	Fri, 13 Dec 2019 01:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from protonic.nl (protonic.xs4all.nl [83.163.252.89])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A9516E19C;
 Wed, 11 Dec 2019 08:35:36 +0000 (UTC)
Received: from webmail.promanet.nl (edge2.prtnl [192.168.1.170])
 by sparta (Postfix) with ESMTP id B678944A004C;
 Wed, 11 Dec 2019 09:35:33 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 09:35:35 +0100
From: robin <robin@protonic.nl>
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <87pngx4muv.fsf@intel.com>
References: <cover.1575390740.git.jani.nikula@intel.com>
 <31c18e3ce9d6962aabda4799b3051039ff591c92.1575390741.git.jani.nikula@intel.com>
 <87pngx4muv.fsf@intel.com>
Message-ID: <7c78b5c7421f75c2afdeb4b3a15c8a09@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.6
X-Mailman-Approved-At: Fri, 13 Dec 2019 01:32:50 +0000
Subject: Re: [Intel-gfx] [PATCH v3 12/12] auxdisplay: constify fb ops
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
Cc: Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>,
 linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani,

On 2019-12-09 15:03, Jani Nikula wrote:
> On Tue, 03 Dec 2019, Jani Nikula <jani.nikula@intel.com> wrote:
>> Now that the fbops member of struct fb_info is const, we can start
>> making the ops const as well.
>> 
>> Cc: Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
>> Cc: Robin van der Gracht <robin@protonic.nl>
>> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
>> Acked-by: Robin van der Gracht <robin@protonic.nl>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> Miguel, Robin, just to err on the safe side, were you both okay with me
> merging this through drm-misc? Not very likely to conflict badly.

ht16k33 driver hasn't seen much change lately, should be fine.

Robin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
