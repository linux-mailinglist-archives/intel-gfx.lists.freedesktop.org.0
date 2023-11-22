Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D96987F49D0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 16:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B098610E662;
	Wed, 22 Nov 2023 15:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C99610E65A;
 Wed, 22 Nov 2023 15:06:45 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id C1BAC1F385;
 Wed, 22 Nov 2023 15:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1700665603; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OrnR+VJ3e8KBiB9GJuzndO2GMUtaDExl7p2e9XDoJNY=;
 b=I3VUEh0nmQg+RePNSu00a2BA3dlsre6v2YtGb07RjTtCKrjUi1ICIvIdzbKon9Yt4/fQBk
 VJ9Wpf2K7cyzFS9zBCBUo6IIvILDDyL1bskUFqE+WQg5nj7WUeYGI/EZaADq7d9raLMLVq
 j2J5KyiS0r9zuduA6j3dmaOBYhZXsr0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1700665603;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OrnR+VJ3e8KBiB9GJuzndO2GMUtaDExl7p2e9XDoJNY=;
 b=HaijsBJyT5xIphmfAgcIDItAfIvsHToSSGgn6ij0vk97n2OBQT7+g9z+2+NA7fWsCj8Wob
 +nqu+eTHutvkdWDA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B44C113467;
 Wed, 22 Nov 2023 15:06:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id EEn8KwMZXmXdGgAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 22 Nov 2023 15:06:43 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 4E863A07DC; Wed, 22 Nov 2023 16:06:43 +0100 (CET)
Date: Wed, 22 Nov 2023 16:06:43 +0100
From: Jan Kara <jack@suse.cz>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <20231122150643.5b57p5yxhfuxa764@quack3>
References: <20231122-vfs-eventfd-signal-v2-0-bd549b14ce0c@kernel.org>
 <20231122-vfs-eventfd-signal-v2-4-bd549b14ce0c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122-vfs-eventfd-signal-v2-4-bd549b14ce0c@kernel.org>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spam-Level: 
X-Spam-Score: -6.30
X-Spamd-Result: default: False [-6.30 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; RCVD_TLS_ALL(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 BAYES_HAM(-3.00)[100.00%]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; REPLY(-4.00)[];
 NEURAL_HAM_LONG(-1.00)[-1.000]; TO_MATCH_ENVRCPT_SOME(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; RCPT_COUNT_GT_50(0.00)[78];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[vger.kernel.org,lst.de,suse.cz,redhat.com,google.com,linutronix.de,alien8.de,linux.intel.com,kernel.org,infradead.org,xen.org,intel.com,gmail.com,ffwll.ch,ziepe.ca,linux.ibm.com,arndb.de,linuxfoundation.org,linux.alibaba.com,oss.nxp.com,kvack.org,cmpxchg.org,linux.dev,nvidia.com,lists.freedesktop.org,lists.ozlabs.org,lists.linux-foundation.org,kernel.dk];
 RCVD_COUNT_TWO(0.00)[2]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Flag: NO
Subject: Re: [Intel-gfx] [PATCH v2 4/4] eventfd: make
 eventfd_signal{_mask}() void
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
Cc: linux-aio@kvack.org, linux-s390@vger.kernel.org, linux-usb@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Paul Durrant <paul@xen.org>, Tom Rix <trix@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Kirti Wankhede <kwankhede@nvidia.com>,
 netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Leon Romanovsky <leon@kernel.org>,
 Harald Freudenberger <freude@linux.ibm.com>, Fei Li <fei1.li@intel.com>,
 x86@kernel.org, Roman Gushchin <roman.gushchin@linux.dev>,
 Halil Pasic <pasic@linux.ibm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, intel-gfx@lists.freedesktop.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-fpga@vger.kernel.org,
 Wu Hao <hao.wu@intel.com>, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Andrew Donnellan <ajd@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Shakeel Butt <shakeelb@google.com>,
 Heiko Carstens <hca@linux.ibm.com>, Johannes Weiner <hannes@cmpxchg.org>,
 linuxppc-dev@lists.ozlabs.org, Frederic Barrat <fbarrat@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Borislav Petkov <bp@alien8.de>,
 kvm@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 cgroups@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org, intel-gvt-dev@lists.freedesktop.org,
 io-uring@vger.kernel.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Pavel Begunkov <asml.silence@gmail.com>, Eric Auger <eric.auger@redhat.com>,
 Sean Christopherson <seanjc@google.com>, Oded Gabbay <ogabbay@kernel.org>,
 Muchun Song <muchun.song@linux.dev>,
 Peter Oberparleiter <oberpar@linux.ibm.com>, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, Benjamin LaHaise <bcrl@kvack.org>,
 "Michael S. Tsirkin" <mst@redhat.com>, Sven Schnelle <svens@linux.ibm.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Moritz Fischer <mdf@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 David Woodhouse <dwmw2@infradead.org>, Xu Yilun <yilun.xu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed 22-11-23 13:48:25, Christian Brauner wrote:
> No caller care about the return value.
> 
> Signed-off-by: Christian Brauner <brauner@kernel.org>

Yup. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/eventfd.c            | 40 +++++++++++++++-------------------------
>  include/linux/eventfd.h | 16 +++++++---------
>  2 files changed, 22 insertions(+), 34 deletions(-)
> 
> diff --git a/fs/eventfd.c b/fs/eventfd.c
> index a9a6de920fb4..13be2fb7fc96 100644
> --- a/fs/eventfd.c
> +++ b/fs/eventfd.c
> @@ -43,10 +43,19 @@ struct eventfd_ctx {
>  	int id;
>  };
>  
> -__u64 eventfd_signal_mask(struct eventfd_ctx *ctx, __poll_t mask)
> +/**
> + * eventfd_signal - Adds @n to the eventfd counter.
> + * @ctx: [in] Pointer to the eventfd context.
> + * @mask: [in] poll mask
> + *
> + * This function is supposed to be called by the kernel in paths that do not
> + * allow sleeping. In this function we allow the counter to reach the ULLONG_MAX
> + * value, and we signal this as overflow condition by returning a EPOLLERR
> + * to poll(2).
> + */
> +void eventfd_signal_mask(struct eventfd_ctx *ctx, __poll_t mask)
>  {
>  	unsigned long flags;
> -	__u64 n = 1;
>  
>  	/*
>  	 * Deadlock or stack overflow issues can happen if we recurse here
> @@ -57,37 +66,18 @@ __u64 eventfd_signal_mask(struct eventfd_ctx *ctx, __poll_t mask)
>  	 * safe context.
>  	 */
>  	if (WARN_ON_ONCE(current->in_eventfd))
> -		return 0;
> +		return;
>  
>  	spin_lock_irqsave(&ctx->wqh.lock, flags);
>  	current->in_eventfd = 1;
> -	if (ULLONG_MAX - ctx->count < n)
> -		n = ULLONG_MAX - ctx->count;
> -	ctx->count += n;
> +	if (ctx->count < ULLONG_MAX)
> +		ctx->count++;
>  	if (waitqueue_active(&ctx->wqh))
>  		wake_up_locked_poll(&ctx->wqh, EPOLLIN | mask);
>  	current->in_eventfd = 0;
>  	spin_unlock_irqrestore(&ctx->wqh.lock, flags);
> -
> -	return n == 1;
> -}
> -
> -/**
> - * eventfd_signal - Adds @n to the eventfd counter.
> - * @ctx: [in] Pointer to the eventfd context.
> - *
> - * This function is supposed to be called by the kernel in paths that do not
> - * allow sleeping. In this function we allow the counter to reach the ULLONG_MAX
> - * value, and we signal this as overflow condition by returning a EPOLLERR
> - * to poll(2).
> - *
> - * Returns the amount by which the counter was incremented.
> - */
> -__u64 eventfd_signal(struct eventfd_ctx *ctx)
> -{
> -	return eventfd_signal_mask(ctx, 0);
>  }
> -EXPORT_SYMBOL_GPL(eventfd_signal);
> +EXPORT_SYMBOL_GPL(eventfd_signal_mask);
>  
>  static void eventfd_free_ctx(struct eventfd_ctx *ctx)
>  {
> diff --git a/include/linux/eventfd.h b/include/linux/eventfd.h
> index 4f8aac7eb62a..fea7c4eb01d6 100644
> --- a/include/linux/eventfd.h
> +++ b/include/linux/eventfd.h
> @@ -35,8 +35,7 @@ void eventfd_ctx_put(struct eventfd_ctx *ctx);
>  struct file *eventfd_fget(int fd);
>  struct eventfd_ctx *eventfd_ctx_fdget(int fd);
>  struct eventfd_ctx *eventfd_ctx_fileget(struct file *file);
> -__u64 eventfd_signal(struct eventfd_ctx *ctx);
> -__u64 eventfd_signal_mask(struct eventfd_ctx *ctx, __poll_t mask);
> +void eventfd_signal_mask(struct eventfd_ctx *ctx, __poll_t mask);
>  int eventfd_ctx_remove_wait_queue(struct eventfd_ctx *ctx, wait_queue_entry_t *wait,
>  				  __u64 *cnt);
>  void eventfd_ctx_do_read(struct eventfd_ctx *ctx, __u64 *cnt);
> @@ -58,14 +57,8 @@ static inline struct eventfd_ctx *eventfd_ctx_fdget(int fd)
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> -static inline int eventfd_signal(struct eventfd_ctx *ctx)
> +static inline void eventfd_signal_mask(struct eventfd_ctx *ctx, unsigned mask)
>  {
> -	return -ENOSYS;
> -}
> -
> -static inline int eventfd_signal_mask(struct eventfd_ctx *ctx, unsigned mask)
> -{
> -	return -ENOSYS;
>  }
>  
>  static inline void eventfd_ctx_put(struct eventfd_ctx *ctx)
> @@ -91,5 +84,10 @@ static inline void eventfd_ctx_do_read(struct eventfd_ctx *ctx, __u64 *cnt)
>  
>  #endif
>  
> +static inline void eventfd_signal(struct eventfd_ctx *ctx)
> +{
> +	eventfd_signal_mask(ctx, 0);
> +}
> +
>  #endif /* _LINUX_EVENTFD_H */
>  
> 
> -- 
> 2.42.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
